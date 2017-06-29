from django.shortcuts import render, redirect, HttpResponse

from firstapp.models import Article, Comment, Ticket, UserProfile
from firstapp.forms import CommentForm, ProfileForm

from django.core.paginator import Paginator
from django.core.paginator import EmptyPage
from django.core.paginator import PageNotAnInteger
from django.core.exceptions import ObjectDoesNotExist

from django.contrib.auth import login
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User

# Create your views here.

# ---------------------------------作业代码-开始---------------------------------
# "我的资料"显示视图
def myinfo(request, error_form=None, success_submit=False):

    # 不允许未登录用户访问，未登录用户访问，自动跳转到首页
    if not request.user.is_authenticated:
        return redirect(to='index')

    # note: if you miss "()" then form is not an instance
    # which means you cannot use attribute ".fields"!
    form = ProfileForm()
    context = {}

    if error_form is not None:
        if request.user.profile.realname:
            # 如果用户已设置真实姓名则显示真实姓名(这个和性别不一样)
            error_form.fields['realname'].widget.attrs['placeholder'] = request.user.profile.realname
        context['form'] = error_form
    else:
        if request.user.profile.realname:
            # 如果用户已设置真实姓名则显示真实姓名
            form.fields['realname'].widget.attrs['placeholder'] = request.user.profile.realname
        if request.user.profile.sex:
            # 如果用户已设置性别则显示已选择的性别
            form.fields['sex'].initial = request.user.profile.sex
        else:
            # 如果用户未设置性别则显示保密
            form.fields['sex'].initial = "保密"

        context['form'] = form
    # 用于标识用户资料是否修改成功
    # 注意：not form.errors 并不意味着就 is_valid, 还有可能是一次get请求
    context['success_submit'] = success_submit

    return render(request, 'myinfo.html', context)

# "我的资料"提交"修改"视图
def myinfo_update(request):
    # 不允许未登录用户访问，未登录用户访问，自动跳转到首页
    if not request.user.is_authenticated:
        return redirect(to='index')

    form = ProfileForm(request.POST, request.FILES)

    if form.is_valid():
        # note1: better to use if form.cleaned_data['password'] !=""
        # but not if not form.cleaned_data['password']
        # note2: for file should use None
        user = request.user.profile
        # todo: 以后可以试试循环
        if form.cleaned_data['realname'] != "":
            # 如果用户有填入“真实姓名”信息，则存入
            user.realname = form.cleaned_data['realname']
            user.save()

        if form.cleaned_data['sex'] != "":
            # 如果用户有填入“性别”信息，则存入
            user.sex = form.cleaned_data['sex']
            user.save()

        if form.cleaned_data['avatar'] != None:
            # 如果用户有填入“头像”信息，则存入(先删除原有头像，如有)
            if user.avatar:
                user.avatar.delete(save=False)
            user.avatar = form.cleaned_data['avatar']
            user.save()

        if form.cleaned_data['password'] != "":
            # 如果用户有填入“密码”信息，则存入
            user = request.user
            user.set_password(form.cleaned_data['password'])
            user.save()
            return redirect(to='index')

        return myinfo(request, error_form=None, success_submit=True)

    else:
        return myinfo(request, error_form=form, success_submit=False)

# "我的收藏"显示视图
def mycollection(request):
    # 不允许未登录用户访问，未登录用户访问，自动跳转到首页
    if not request.user.is_authenticated:
        return redirect(to='index')

    # note: use request.user.profile but not UserProfile,
    # because this is about request
    u = request.user.profile
    collection_list = Article.objects.filter(collected_by=u)

    page_robot = Paginator(collection_list, 3)
    page_num = request.GET.get('page')
    try:
        collection_list = page_robot.page(page_num)
    except EmptyPage:
        collection_list = page_robot.page(page_robot.num_pages)
    except PageNotAnInteger:
        collection_list = page_robot.page(1)

    collection_list_last_index = collection_list.paginator.count % 3

    context = {}
    context["collection_list"] = collection_list
    # context["collection_list_last_index"] = collection_list_last_index

    return render(request, 'mycollection.html', context)

# ---------------------------------作业代码-结束---------------------------------

def index(request):
    cat = request.GET.get('cat')
    if cat == 'all':
        article_list = Article.objects.filter(category='all')
    elif cat == 'new':
        article_list = Article.objects.filter(category='new')
    elif cat == 'editor':
        article_list = Article.objects.filter(category='editor')

    page_robot = Paginator(article_list, 6)
    page_num = request.GET.get('page')
    try:
        article_list = page_robot.page(page_num)
    except EmptyPage:
        article_list = page_robot.page(page_robot.num_pages)
    except PageNotAnInteger:
        article_list = page_robot.page(1)

    context = {}
    context["article_list"] = article_list
    context["cat"] = cat

    return render(request, 'index.html', context)

def detail(request, id):
    article = Article.objects.get(id=id)
# ---------------------------------作业代码-开始---------------------------------
    article.views += 1
    article.save()
# ---------------------------------作业代码-结束---------------------------------
    if request.method == "GET":
        form = CommentForm

    context = {}
    context["article"] = article
    context['form'] = form

    return render(request, 'detail.html', context)

def comment(request, id):
    if request.method == "POST":
        form = CommentForm(request.POST)
        if form.is_valid():
            name = form.cleaned_data["name"]
            comment = form.cleaned_data["comment"]
            article = Article.objects.get(id=id)
            c = Comment(name=name, comment=comment, belong_to=article)
            c.save()
            return redirect(to="detail", id=id)
    return redirect(to="detail", id=id)

def index_login(request):
    if request.user.is_authenticated:
        return redirect(to="/index/?cat=all")

    if request.method == "GET":
        form = AuthenticationForm

    if request.method == "POST":
        form = AuthenticationForm(data=request.POST)
        if form.is_valid():
            login(request, form.get_user())
            return redirect(to="/index/?cat=all")

    context = {}
    context['form'] = form

    return render(request, 'login.html', context)

def index_register(request):
    if request.method == "GET":
        form = UserCreationForm

    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect(to='login')

    context = {}
    context['form'] = form

    return render(request, 'register.html', context)

# "文章详情"提交"赞一下（并收藏）"视图
def vote(request, id):
# ---------------------------------作业代码-开始---------------------------------
    # 因为vote后必然重定向至详情页，未避免浏览量无端+1，在此先-1，且不必判断下限
    article = Article.objects.get(id=id)
    article.views -= 1
    article.save()
# ---------------------------------作业代码-结束---------------------------------

    # 未登录用户不允许投票，自动跳回详情页
    if not isinstance(request.user, User):
        return redirect(to="detail", id=id)

    voter_id = request.user.id

    try:
        # 如果找不到登陆用户对此篇文章的操作，就报错
        user_ticket_for_this_article = Ticket.objects.get(voter_id=voter_id, article_id=id)
        user_ticket_for_this_article.choice = request.POST["vote"]
        user_ticket_for_this_article.save()
    except ObjectDoesNotExist:
        new_ticket = Ticket(voter_id=voter_id, article_id=id, choice=request.POST["vote"])
        new_ticket.save()

# ---------------------------------作业代码-开始---------------------------------
    # 如果是点赞，且该篇文章 未被 请求点赞用户点赞过，则更新点赞总数
    # 并将点赞用户request.user.userprofile(即UserProfile)添加到Artical.collected_by字段中
    # 如果是点赞，且该篇文章 已被 请求点赞用户点赞过，则无所作为
    if request.POST["vote"] == "like":
        try:
            # 若已点过赞
            article = Article.objects.get(id=id, collected_by=request.user.profile)
            # 则无所作为
        except ObjectDoesNotExist:
            # 若未点过赞
            # 则做点什么
            article = Article.objects.get(id=id)
            article.likes += 1
            article.collected_by.add(request.user.profile)
            article.save()
    # 如果是点炸，且该篇文章 已被 请求点赞用户点赞过，则更新点赞总数
    # 并将点炸用户request.user.userprofile(即UserProfile)排除在Artical.collected_by字段外
    if request.POST["vote"] == "dislike":
        try:
            # 若已点过赞
            article = Article.objects.get(id=id, collected_by=request.user.profile)
            # 则做点什么
            if article.likes > 0:
                article.likes -= 1
            article.collected_by.remove(request.user.profile)
            article.save()
        except ObjectDoesNotExist:
            # 若已点过赞
            # 则无所作为
            pass
# ---------------------------------作业代码-结束---------------------------------
    return redirect(to="detail", id=id)
