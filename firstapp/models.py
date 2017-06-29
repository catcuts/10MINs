from django.db import models

from django.contrib.auth.models import User

# Create your models here.

# ---------------------------------作业代码-开始---------------------------------
class UserProfile(models.Model):
    user = models.OneToOneField(to=User, related_name='profile')
    realname = models.CharField(default=None, blank=True, null=True, max_length=50)
    SEX_CHOICES = {
        ("female", "Female"),
        ("male", "Male"),
        ("xale", "Xale")
    }
    # note1: var name "choices" of Field.choices should not be replaced!
    # note2: default is necessary or error prompts.
    sex = models.CharField(choices=SEX_CHOICES, default="Xmale", max_length=20)
    # note: use FileField temp. if Pillow cannot(or limited to) be installed.
    # todo: think about renaming uploaded file.
    avatar = models.FileField(default=None, blank=True, null=True, upload_to='upload')

    def __str__(self):
        return self.user.username
# note: to automatically create a profile as needed
User.profile = property(lambda u: UserProfile.objects.get_or_create(user=u)[0])
# ---------------------------------作业代码-结束---------------------------------

class Article(models.Model):
    title = models.CharField(max_length=500)
    img = models.CharField(null=True, blank=True, max_length=250)
    content = models.TextField(null=True, blank=True)
    views = models.IntegerField(default=0)
    likes = models.IntegerField(default=0)
    createtime = models.DateField()
# ---------------------------------作业代码-开始---------------------------------
    collected_by = models.ManyToManyField(blank=True, to=UserProfile, related_name='under_collection')
    CAT_CHOICES = {
        ("all", "All"),
        ("new", "New"),
        ("editor", "Editor's")
    }
    category = models.CharField(choices=CAT_CHOICES, default="all", max_length=20)
# ---------------------------------作业代码-结束---------------------------------

    def __str__(self):
        return self.title

class Comment(models.Model):
    name = models.CharField(max_length=500)
    avatar = models.CharField(max_length=250, default="static/images/default.png")
    comment = models.TextField(null=True, blank=True)
    createtime = models.DateField(auto_now=True)

    belong_to = models.ForeignKey(to=Article, related_name="under_comments", null=True, blank=True)

    def __str__(self):
        return self.name

class Ticket(models.Model):
    voter = models.ForeignKey(to=User, related_name="user_tickets")
    article = models.ForeignKey(to=Article, related_name="article_tickets")

    ARTICLE_CHOICES = {
        ("like", "like"),
        ("dislike", "dislike"),
        ("normal", "normal")
    }
    choice = models.CharField(choices=ARTICLE_CHOICES, max_length=10)

    def __str__(self):
        return str(self.id)
