from django import forms
from django.core.exceptions import ValidationError
from  django.contrib.auth.password_validation import validate_password

def word_validator(comment):
    if len(comment) < 1:
        raise ValidationError("not enough words")

def comment_validator(comment):
    keywords = [u"发票", u"钱"]
    for keyword in keywords:
        if keyword in comment:
            raise ValidationError("Your comment contains invalid words,please check it again.")

# ---------------------------------作业代码-开始---------------------------------
# 图片校验器(文件类型校验)
def image_validator(avatar):
    import os
    ext = os.path.splitext(avatar.name)[1]  # [0] returns path+filename
    valid_extensions = ['.jpg', '.jpeg', '.png', '.gif', '.bmp']
    if not ext.lower() in valid_extensions:
        raise ValidationError(u'Unsupported file extension.')

class ProfileForm(forms.Form):
    realname = forms.CharField(required=False, max_length=50, widget=forms.TextInput(attrs={'placeholder': '你的真实姓名'}))
    SEX_CHOICES = {
        ("female", "女"),
        ("male", "男"),
        ("xale", "保密")
    }
    # note1: var name "choices" of Field.choices should not be replaced!
    # note2: default is necessary or error prompts.
    sex = forms.ChoiceField(choices=SEX_CHOICES)
    # note: use FileField temp. if Pillow cannot(or limited to) be installed.
    # todo: think about renaming uploaded file.
    avatar = forms.FileField(required=False, validators=[image_validator])
    password = forms.CharField(required=False, widget=forms.PasswordInput(), validators=[validate_password])
# ---------------------------------作业代码-结束---------------------------------

class CommentForm(forms.Form):
    name = forms.CharField(max_length=50)
    comment = forms.CharField(
        widget=forms.Textarea(),
        error_messages = {
            "required": 'wow, such words'
            },
        validators = [word_validator, comment_validator]
        )
