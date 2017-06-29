from django.contrib import admin

# Register your models here.
from firstapp.models import Article, Comment, UserProfile

admin.site.register(Article)
admin.site.register(Comment)
# ---------------------------------作业代码-开始---------------------------------
admin.site.register(UserProfile)
# ---------------------------------作业代码-结束---------------------------------
