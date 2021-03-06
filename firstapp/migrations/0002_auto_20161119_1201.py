# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2016-11-19 04:01
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('firstapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=500)),
                ('img', models.CharField(blank=True, max_length=250, null=True)),
                ('content', models.TextField(blank=True, null=True)),
                ('views', models.IntegerField(default=0)),
                ('likes', models.IntegerField(default=0)),
                ('createtime', models.DateField()),
            ],
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=500)),
                ('avatar', models.CharField(default='static/images/default.png', max_length=250)),
                ('comment', models.TextField(blank=True, null=True)),
                ('createtime', models.DateField(auto_now=True)),
                ('belong_to', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='under_comments', to='firstapp.Article')),
            ],
        ),
        migrations.CreateModel(
            name='Ticket',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('choice', models.CharField(choices=[('dislike', 'dislike'), ('like', 'like'), ('normal', 'normal')], max_length=10)),
                ('article', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='article_tickets', to='firstapp.Article')),
                ('voter', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_tickets', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='UserProfile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('realname', models.CharField(blank=True, default=None, max_length=50, null=True)),
                ('sex', models.CharField(choices=[('female', 'Female'), ('xale', 'Xale'), ('male', 'Male')], default='Xmale', max_length=20)),
                ('avatar', models.FileField(default=None, upload_to='upload')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='profile', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='article',
            name='collected_by',
            field=models.ManyToManyField(blank=True, related_name='under_collection', to='firstapp.UserProfile'),
        ),
    ]
