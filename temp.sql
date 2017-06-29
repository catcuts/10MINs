CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '1','1','add_logentry','Can add log entry' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '2','1','change_logentry','Can change log entry' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '3','1','delete_logentry','Can delete log entry' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '4','2','add_group','Can add group' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '5','2','change_group','Can change group' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '6','2','delete_group','Can delete group' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '7','3','add_user','Can add user' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '8','3','change_user','Can change user' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '9','3','delete_user','Can delete user' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '10','4','add_permission','Can add permission' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '11','4','change_permission','Can change permission' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '12','4','delete_permission','Can delete permission' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '13','5','add_contenttype','Can add content type' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '14','5','change_contenttype','Can change content type' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '15','5','delete_contenttype','Can delete content type' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '16','6','add_session','Can add session' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '17','6','change_session','Can change session' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '18','6','delete_session','Can delete session' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '19','7','add_ticket','Can add ticket' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '20','7','change_ticket','Can change ticket' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '21','7','delete_ticket','Can delete ticket' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '22','8','add_comment','Can add comment' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '23','8','change_comment','Can change comment' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '24','8','delete_comment','Can delete comment' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '25','9','add_userprofile','Can add user profile' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '26','9','change_userprofile','Can change user profile' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '27','9','delete_userprofile','Can delete user profile' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '28','10','add_article','Can add article' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '29','10','change_article','Can change article' );
INSERT INTO auth_permission ( id,content_type_id,codename,name ) VALUES ( '30','10','delete_article','Can delete article' );
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_user ( id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username ) VALUES ( '1','pbkdf2_sha256$30000$v6sQHejAELk2$J+UcjsE8F+zp7mFTrrNiXjZU5lNNlQx1sd2LmrE6zJE=','2016-11-19 04:06:58.952375','0','','','','0','1','2016-11-19 04:06:51.042980','catcuts' );
INSERT INTO auth_user ( id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username ) VALUES ( '2','pbkdf2_sha256$30000$Z5KFGIpGuzyx$o+oyKzzn9bxuuUfoTewtQZ5aTMwtW1ek5VRhfQSr+lA=','2016-11-19 04:10:53.288167','0','','','','0','1','2016-11-19 04:10:43.676351','miao' );
INSERT INTO auth_user ( id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username ) VALUES ( '3','pbkdf2_sha256$30000$yuQ0YtE0fSyW$e/cOKyuAXAQqYwB1lPOqFom40Rkl/sP+89YocCturDM=','2016-11-19 04:11:44.717559','0','','','','0','1','2016-11-19 04:11:38.541426','miao0' );
INSERT INTO auth_user ( id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username ) VALUES ( '4','pbkdf2_sha256$30000$HKEK6BlkEm8R$it8ZdLHKu8uLz3Lj2N5MCpglKyE2CYISeZEkzrNUrPQ=','2016-11-19 11:32:13.323160','0','','','','0','1','2016-11-19 04:13:25.811321','miao1' );
INSERT INTO auth_user ( id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username ) VALUES ( '5','pbkdf2_sha256$30000$k9LKYuaUSyuc$w7DGknr+mdEhVgdFW+m1I8qZqE+WcEYagEEURMPDRMk=','2016-11-21 11:15:47.973618','1','','','','1','1','2016-11-19 04:22:50.056295','admin0' );
INSERT INTO auth_user ( id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username ) VALUES ( '6','pbkdf2_sha256$30000$oQLUIESlhTKJ$9i29VcP8xL5/DQh1ZfMr65x/T+Zjqjo3I7YeFVc8PYc=','2016-11-27 01:05:25.343763','0','','','','0','1','2016-11-19 12:29:44.600464','test' );
INSERT INTO auth_user ( id,password,last_login,is_superuser,first_name,last_name,email,is_staff,is_active,date_joined,username ) VALUES ( '7','pbkdf2_sha256$30000$Vc7VUmQmX9jX$XM4qF5bjL77g0rmDWlE5hPg7WTel6+ETT+5fGyxBFws=','2016-11-20 14:23:35.059194','0','','','','0','1','2016-11-20 14:23:24.791004','miao2' );
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '1','1','马来西亚总理纳吉布访华期间炮轰西方国家 外媒：美国再受创','1','[{"added": {}}]','10','5','2016-11-19 04:28:20.288727' );
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '2','2','把英语记在大脑里存中文的地方，就再也不会忘记了','1','[{"added": {}}]','10','5','2016-11-19 04:32:13.629354' );
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '3','3','常常熬夜的我，感觉很对不起辛辛苦苦进化的它们','1','[{"added": {}}]','10','5','2016-11-19 04:33:37.870562' );
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '4','4','想进我们公司，先来测测你的性格吧','1','[{"added": {}}]','10','5','2016-11-19 04:34:32.060478' );
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '5','5','就算是鸡蛋碰石头，也要溅他一身黄','1','[{"added": {}}]','10','5','2016-11-19 04:35:35.548680' );
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '6','6','生活总是悲伤的，我们必须接受它','1','[{"added": {}}]','10','5','2016-11-19 04:36:25.829866' );
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '7','7','很多男人都想在大街上拯救一个雏妓吧','1','[{"added": {}}]','10','5','2016-11-19 04:38:40.931964' );
INSERT INTO django_admin_log ( id,object_id,object_repr,action_flag,change_message,content_type_id,user_id,action_time ) VALUES ( '8','8','小事 · 神啊，赐我一个异性吧','1','[{"added": {}}]','10','5','2016-11-19 04:40:35.030268' );
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '1','admin','logentry' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '2','auth','group' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '3','auth','user' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '4','auth','permission' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '5','contenttypes','contenttype' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '6','sessions','session' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '7','firstapp','ticket' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '8','firstapp','comment' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '9','firstapp','userprofile' );
INSERT INTO django_content_type ( id,app_label,model ) VALUES ( '10','firstapp','article' );
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '1','contenttypes','0001_initial','2016-11-19 04:01:24.498078' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '2','auth','0001_initial','2016-11-19 04:01:24.691089' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '3','admin','0001_initial','2016-11-19 04:01:24.879100' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '4','admin','0002_logentry_remove_auto_add','2016-11-19 04:01:25.075111' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '5','contenttypes','0002_remove_content_type_name','2016-11-19 04:01:25.283123' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '6','auth','0002_alter_permission_name_max_length','2016-11-19 04:01:25.479134' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '7','auth','0003_alter_user_email_max_length','2016-11-19 04:01:25.669943' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '8','auth','0004_alter_user_username_opts','2016-11-19 04:01:25.856953' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '9','auth','0005_alter_user_last_login_null','2016-11-19 04:01:26.029162' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '10','auth','0006_require_contenttypes_0002','2016-11-19 04:01:26.114166' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '11','auth','0007_alter_validators_add_error_messages','2016-11-19 04:01:26.289176' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '12','auth','0008_alter_user_username_max_length','2016-11-19 04:01:26.497188' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '13','firstapp','0001_initial','2016-11-19 04:01:26.575189' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '14','firstapp','0002_auto_20161119_1201','2016-11-19 04:01:26.812400' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '15','sessions','0001_initial','2016-11-19 04:01:26.979207' );
INSERT INTO django_migrations ( id,app,name,applied ) VALUES ( '16','firstapp','0003_auto_20161119_1204','2016-11-19 04:04:10.847662' );
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session ( session_key,session_data,expire_date ) VALUES ( 't680u8ch9hum902ykahz7q189l823c15','NWZlN2Y0YjE3NDM2Y2IzYTc4N2I4NDgzYjQyMGM1OWIyNGQ0MDZjYjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMDllMDJiNmEyMzEzNzRlYmFiZDUxZGEzMTU4NDRkZWIzYjU0ZjY0In0=','2016-12-03 04:22:59.359231' );
INSERT INTO django_session ( session_key,session_data,expire_date ) VALUES ( '7ww4q1v6uraw2c72j0o4bj4v9bpolyw9','OTVjMTViYTE0NjI4NjJkMDM0NmNjNzBiYTMxZmJkMTI3OTQ0MDA0Zjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTcyNTNhOWI5ZTEyZjhlNTNkM2I1YjQ2ZjRhOTA2YjZhMzA3ZTgwIn0=','2016-12-03 12:39:22.014079' );
INSERT INTO django_session ( session_key,session_data,expire_date ) VALUES ( 'mwn0o7fyqhsv8xr1u0oahfbob9j6lvkp','NWZlN2Y0YjE3NDM2Y2IzYTc4N2I4NDgzYjQyMGM1OWIyNGQ0MDZjYjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMDllMDJiNmEyMzEzNzRlYmFiZDUxZGEzMTU4NDRkZWIzYjU0ZjY0In0=','2016-12-03 13:13:08.389487' );
INSERT INTO django_session ( session_key,session_data,expire_date ) VALUES ( '93nt5jlv8bozpgofgialstp9wivttu5n','YjMwZjI1Y2EzMDQ2MmFiNWI4ZGEwZDlhMzY1OTI0YjQwZTM0ZGVmNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMxM2JkMTc2Mzc0YzRkNmJiODZkOTRmNTZiZWI0NDk4ZTA1Y2E2YzYiLCJfYXV0aF91c2VyX2lkIjoiNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-12-05 09:12:13.843094' );
INSERT INTO django_session ( session_key,session_data,expire_date ) VALUES ( '5op2nxffdcqjbuwrk2hft93jy9qbk7p0','NTc5N2FiYTJiY2YxZjg1NzI5YzJkNDNjOWUzN2QwZjJhYTcyZWJiOTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTQ5NjA4MGEwYTA3MWI1ODc0N2Y0MTdhNmVhYzU4NzNhNTVjNjRiIn0=','2016-12-05 11:25:04.022902' );
INSERT INTO django_session ( session_key,session_data,expire_date ) VALUES ( 'ftugzlea84mr9b8c7rv3efhuqedcy0g4','N2QwMmUxOWVkMjFlYTE5MTAzOWI4ODVkYTRmZWU1YjNlZDg4MWE2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjVlNDk2MDgwYTBhMDcxYjU4NzQ3ZjQxN2E2ZWFjNTg3M2E1NWM2NGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=','2016-12-10 09:00:08.835197' );
INSERT INTO django_session ( session_key,session_data,expire_date ) VALUES ( 'ycxi9eo9n56qj182wq125sjm1xc32252','NDIyZTE1YzQyNWRlYzE0OTZhOGM5MWE2YmJjMzBkZmJhZDAzMGQxMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVlNDk2MDgwYTBhMDcxYjU4NzQ3ZjQxN2E2ZWFjNTg3M2E1NWM2NGIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-12-11 01:05:25.463770' );
CREATE TABLE "firstapp_article" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(500) NOT NULL, "img" varchar(250) NULL, "content" text NULL, "views" integer NOT NULL, "likes" integer NOT NULL, "createtime" date NOT NULL);
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '1','马来西亚总理纳吉布访华期间炮轰西方国家 外媒：美国再受创','http://i.guancha.cn/news/2016/11/05/20161105122453601.jpg','【观察者网 综合】继菲律宾总统杜特尔特访华之后，另一个东南亚国家马来西亚总理纳吉布自这周一开始来到中国进行为期6天的访问。期间，他在《中国日报》的一篇评论中强硬表示，大国应该更加平等地对待小国，从前的殖民大国不应该“说教那些曾被它们奴役的国家该如何处理自己今天的内部事务”。
针对纳吉布访华后的“变化”，美国及西方主流媒体出现大量认为纳吉布正在成为东南亚“第二个杜特尔特”的评论，形容马来西亚是美国“亚太再平衡”战略倒下的“第二块多米诺骨牌”。路透社评论称，这被视为是纳吉布与中国拉近关系之际，对西方发动的隐晦攻击。
纳吉布对中国的访问将于11月6日结束，目前已经获得不菲的成果。在经济方面，双方周三已签署了价值342.5亿美元（2318.3亿元人民币）的14份协议。其中包括吉隆坡购买四艘海岸巡逻舰。
马来西亚过去主要从美国购买军事装备，这次它首次采购中国军舰，被一些人称为马来西亚发展国防力量的“新里程碑”。纳吉布说：“我们今天达成了历史性成果。”
点击查看大图
习近平主席会见纳吉布
俄罗斯卫星网评价称，这是相当具有政治效应的合同，尽管中马在南海有领土争执，但中国还是签下了这笔交易。
纳吉布2008年上台，之后马美关系一度发展良好。然而华盛顿热衷于卷入吉隆坡的内部事务导致了后者不满，尤其是美国司法部在7月份对马来西亚国有投资基金“一马发展公司”（1MDB）发起民事诉讼之后，美国司法部指控纳吉布的亲属、朋友从马来西亚政府贪污了逾10亿美元资金，并启动相关调查。这一系列诉讼使纳吉布陷入了洗钱的丑闻中。对于这起案件，纳吉布否认做过任何不法行为，并说马来西亚将配合调查。
根据美国司法部的指控，从1MDB被挪用的资金超过35亿美元。纳吉布斥责这起调查为外国干涉马来西亚的事务，并使得马来西亚与美国之间的关系变得紧张。
纳吉布访问中国之前，菲律宾总统杜特尔特刚刚结束对北京访问，在北京期间，杜特尔特宣告菲律宾与美国“分离”。另外，纳吉布此次访华也正值美国政府因为对与马来西亚总理纳吉布有关的公司采取反洗钱的法律行动而导致双方关系紧张之际。 在这样的背景下， 美国及西方主流媒体出现大量认为纳吉布正在成为东南亚“第二个杜特尔特”的评论，形容马来西亚是美国“亚太再平衡”战略倒下的“第二块多米诺骨牌”。
《纽约时报》写道，美国南海战略再度受创，遏制中国的地区联盟或分崩离析。《华盛顿邮报》分析称，奥巴马的“重返亚太”战略令许多国家失望。TPP协定也面临重重困难。然而中国却能提供成堆的现金和投资承诺，而且还不需要严苛的谈判及附加条件。
“重返亚太并没有发挥它应有的影响力，”新加坡东亚研究所高级研究员蒙特萨诺（Michael Montesano）说。“它没能减少对美国的怀疑，包括对美国主导力及其对该地区承诺的怀疑。”
点击查看大图
华盛顿邮报：紧跟杜特尔特，马来西亚是第二个转向中国的东南亚国家
点击查看大图
华尔街日报：中马首脑会面给美国重返亚太带来挑战
据卫星网报道，俄罗斯外交部外交学院现实国际问题研究所欧亚研究中心专家安德烈·沃洛金、北京语言大学国际关系学院院长贾烈英都认为，西方国家，首先是美国的好为人师的行为已冲破了亚洲政治忍耐的限度。
俄罗斯科学院东方学所专家阿列克谢·德鲁戈夫认为，纳吉布和杜特尔特的忧虑在于担心西方国家在东南亚搞"颜色革命"。
他说：“他们担心，西方国家将带着自己对民主和道德的理解来到亚洲。实际上，这些理解的背后是西方的利益，而亚洲国家的利益甚至不是排在第二位，而是排在第五、第十位。这种担心在亚洲都是存在的。萨达姆和卡扎菲喋血幽灵依然在天空飘荡。尽管东南亚国家并非伊拉克和利比亚那样的集权国家。但他们明白，萨达姆和卡扎菲不是因为集权死掉的，而是因为他们的政策不那么符合华盛顿的想法。为什么这种担心在中国挑明了？因为中国在某种程度上能够对美国的影响力形成平衡。起码马来西亚是这样认为的。而且，马国一直秉承克制的立场。不管怎样，他们从来未反对过西方国家或者采取极端政策。他们在东西方之间总在寻求平衡。马来西亚或者说东南亚，对单极世界的出现严重担心。这种担心以不同的方式和不同的表述体现出来。中国是多极世界力量中心，这就是马来西亚总理为何要以如此腔调针对西方国家且把发表声明的地点选在中国的原因。”
不过，一些专家也表示，美国“衰落”和亚洲国家对中国的倾斜可能只是事情的一方面。
新加坡南洋理工大学高级研究员卡西姆（Yang Razali Kassim）表示，中国拥有实力、金钱和影响力，但它在南海的声索会将其他国家推向华盛顿。而很多亚洲国家只是想在美中两国之间寻求平衡。
面对转向中国的舆论，马来西亚总理也作出回应。据马来西亚华文媒体《星洲日报》报道，纳吉布昨天（4日）强调，马来西亚与中国签署了的商业交易，并不是把国家卖掉。他表示，中马签署了16项政府对政府以及14项企业对企业的谅解备忘录和协议，这些在大马进行的经济投资项目将制造更多就业机会和引进技术，同时能提升人民的生活素质。
他说，“有些人恐惧大马会被卖掉，这是荒谬和绝对错误的想法。”
“这些协议将会促进我们的经济发展，协助所有马来西亚获得更好的机会、过更加富足的生活。这些协议是真正为了全民而进行的努力。”纳吉布指出，这些协议将会加强中马的经济联系，为马来西亚人民带来实质的利益，甚至可以长达数十年。','2','0','2016-11-05' );
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '2','把英语记在大脑里存中文的地方，就再也不会忘记了','../static/images/img1.jpg','青格乐，《如何科学地学语言》：https://www.zhihu.com/publications/hour/19551190
这个问题其实就是在问：母语习得和二语习得（or 二语学习）的区别。

基于经验、理论或者假说的解释就不多说了，可以关注一下 @安时 和我的大部分的关于语言习得的回答。这个答案直接从神经机制入手，也就是题主所问的：“关于语言的记忆为什么差别如此之大？是它们在脑中储存的位置不同吗？”

Ullman（1997,2001a，c，2004）提出了陈述性记忆 / 程序性记忆模型（declarative/procedural memory system model, 简称 DP model），首先，该模型认为人的记忆系统分为陈述性记忆系统和程序性记忆系统，且两个系统具有独立的大脑物质基础，即处于不同的脑区。陈述性记忆系统负责知识、事实、以及“是什么”的陈述性知识，程序性记忆系统负责储存“怎么做”（尤其是一系列的序列技能）的程序性知识。陈述性记忆系统可以储存无意识获得（内隐学习）、有意识获得（外显学习）的知识，但是程序性知识一般都是无意识获得（内隐学习）的。也就是说，我们使用陈述性知识的时候可以是有意识、也可以是无意识的，但是使用程序性知识一般都是无意识的。比如我们开车，刚学开车的时候，我们通过师傅教给的陈述性知识开车，这是一个有意识的过程，但是练着练着，我们水平越来越高，开车就变成了无意识的程序性知识。学语言一样，一开始可能是通过书本、老师有意识的学到一些词汇、语法规则（陈述性知识），但是我们练着练着、用着用着就实现了无意识使用，使这些陈述性知识变成了程序性知识。

给出了陈述性记忆系统和程序性记忆系统的概念，再联想到语言的特征，不难发现，陈述性记忆系统主要负责词汇的习得（是什么），而程序性记忆系统主要负责语法的习得（怎么用）。因此，DP model的基本假设为：心理词典和心理语法分别储存于陈述性记忆和程序性记忆。

而陈述性记忆系统在大脑的物质基础体现在：

1. 颞叶(e.g. the hippocampus),

2. 腹外侧前额叶皮层的部分区域似乎也有助于陈述性知识的提取和选择；

3. 小脑右部也有助于陈述性知识的选择。

程序性记忆系统：1.额叶；2.基底神经节回路。

以上都是我们母语知识系统所储存的脑区，这是通过对母语失语症病人的实验研究得出的结论：

失语症病人的颞叶皮质受损时，词汇能力受损，然而语法能力保留；额叶和基底神经节受损时，语法能力受损，词汇能力完整。

那么，二语知识系统储存在哪里呢？当二语学习者大脑受损时，表现出的和 L1 却是不同。

L2 学习者的颞叶受损时，他们的语法能力受损，远远差于该语言的母语者颞叶受损时的表现。（这说明，L2 学习者的语法能力储存于颞叶，也就是说，L2 学习者的语法能力倚靠陈述性记忆系统获得。）

L2 学习者的左基底神经节和右额叶受损时，L2 学习者的语法能力比该语言母语者在相同区域受损时的表现好很多。（L2 的语法能力和 L1 不同，不储存于额叶和基底神经节）

也有专门在失语症患者身上研究额叶和基底神经节受损时该患者第一语言和第二语言的表现，结果表明：他的母语语法能力受损远远大于第二语言的语法能力。【这个是不是可以解释前阵子出现的一些新闻，脑受损后不会说汉语了，反而只会说英文】

所以，总结一下：L1 和 L2 的词汇能力具有相同的神经基础，都储存于颞叶区域，而 L1 和 L2 的语法能力却具有不同的物质基础，即，L1 语法能力体现在额叶和基底核，而 L2 的语法能力依然体现在颞叶区域（包括海马、海马旁回等）。

但是 Ullman 的 DP model 同时也指出，这种物质基础的不同只体现在母语者和该语言的低水平学习者身上，高水平学习者（high-efficiency learners）则体现出和母语者相同的物质基础。同时，Ullman 也指出通过练习和学习，以及神经可塑性的事实，二语者的语言能力所反应的物质基础会逐渐和母语者吻合。Opitz 和 Friederic 2003 使用 fMRI，借助人工语言的手段证实了 DP model，认为：“a shift from the declarative to the procedural system during late L2 learning.”

最后脑洞大开一下，通过我们知道神经系统极富可塑性，这种可塑性不仅仅是功能上的，也是结构上的，可以参考 双语的人群的大脑构造是什么样的？，Classen et al 1998 实验证据表明，皮质重组在练习 15-30 分钟后就能发生，因此，每天学习英语至少 15-30 分钟哟，这样坚持下来，说不定你的大脑皮层就和母语者一样了呢！

学习的方法也要科学，一定是语言的技能方面（不是死记硬背！）的练习哟！加油！

参考文献：

Micheal T. Ullman (2004) Contribution of memory circuits to language: the declarative/procedural memory model

查看知乎原文（37 条讨论）','4','1','2016-11-19' );
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '3','常常熬夜的我，感觉很对不起辛辛苦苦进化的它们','../static/images/img3.jpg','目前可以观测到类似睡眠状态的最原始生物是线虫，全称秀丽隐杆线虫(Caenorhabditis elegans, C.elegans)，线虫在生命学科的科研里有着和小白鼠一样的地位，甚至比小白鼠更受科研工作者青睐。线虫雌雄同体，成年线虫大概 1 mm 长，需要在显微镜下观察它的状态。线虫平均寿命两到三周，在每次蜕皮前会进入 lethargus phase (专有名词，lethargus 昏睡病)，这也暗示了睡眠可能和发育过程有关。

而且对线虫的研究表明，睡眠和神经系统的可塑性有关 [1]。





▲ 秀丽隐杆线虫 C.elegans

注意我用词是类似睡眠状态，这里就有一个问题，如何定义睡眠呢？

鸟类还有哺乳动物可以通过监测脑电波判断睡着还是醒着，而对于更普遍的其他动物，睡眠是一种有别于清醒的状态，肌肉紧张下降，对外界刺激不敏感的状态，对于每一类动物可能还有其他的特征，比如脑电波和眼动，采取固定姿势，有栖身之地，但动物的睡眠通常都是以 24 小时为周期重复出现。

鱼类的睡眠

相比于鸟类和哺乳动物，鱼既没有能闭上眼睛的眼睑也没有供监测脑电波的大脑新皮质，而且有的鱼一直游啊游啊，所以就有人怀疑它们永远不睡觉 [2]，和尚用的木鱼就是因为“鱼日夜不合目”。

但如果鱼类保持静止并且对外界刺激反应迟钝，我们就认为它在睡觉，并且这种状态是不是以 24 小时为周期也是一个很重要的判断标准。



▲ 地图鱼在睡觉时眼珠上翻

爬行类的睡眠

已经可以通过脑电图监测到爬行动物的睡眠，2016 年《科学》杂志上的一篇论文，研究人员在鬃狮蜥监测到类似于哺乳动物不同睡眠阶段的脑电波 [3]。

【鸟类和哺乳类动物睡眠的都可分为非快速眼动睡眠期和快速眼动睡眠期，NREM 包括了深度睡眠阶段，不同睡眠阶段脑电波频率明显差异，对于睡眠监测有兴趣的可以看看睡眠话题下的其他内容】



▲ 鬃狮蜥 Pogona vitticeps

鸟类的睡眠

鸟类的睡眠很有意思，它们可以大脑两个半球交替睡觉，左半球睡觉时右眼就闭上，右半球睡觉时左眼闭上，这样就可以有效避免捕食者的攻击 [4]。所以理论上说鸟是可以边飞边睡觉的，但对于科学家来说，鸟在飞翔的时候没有办法监测脑电波…



▲ 火烈鸟睡觉时一只眼睁开

而鸟类大脑两个半球的睡眠分配也是根据清醒时的活动，哪半球用的多哪半球休息的时间也多。

哺乳动物的睡眠



▲ 不同哺乳动物的睡眠时间（24 小时）

上一张图可以看出，草食动物的睡眠时间很少，马一天睡觉不到 3 小时，但是马在不睡觉的多数时候也是处于昏昏欲睡的状态。而人类在杂食动物中睡眠时间也相对较少，肉食动物睡眠时间较长，印象中猫夜里目光如炬，但是它随时可以睡觉，一天中睡眠时间的分布也很均匀，而不像人类一天只睡一到两次。



▲ 棕色鼠耳蝠一天睡眠时间达到 20 小时

而如果是以 24 小时为周期的代谢循环，目前观测到的最原始生物是蓝细菌。植物的 24 小时生物钟更容易观察，比如可能我们都学过的光合作用和呼吸作用…含羞草每天黎明张开叶子，傍晚又闭合叶子，你会觉得它在睡觉吗？

目前我们主要通过大脑活动判断生物体是否处于睡眠状态，而睡眠也可以影响神经系统，所以植物和动物还不能一概而论。

那什么时候进化出睡眠？

最开始提到的线虫已经是有上千个细胞的复杂动物了，研究线虫也因为它是生物实验室常见的实验动物，也许更原始的动物就已经出现了这种类似睡眠的状态。

而如果从脑电波来看，到了爬行动物才勉强够格算得上拥有睡眠。

对于褪黑素基因的研究表明，编码褪黑素的基因可以追溯到 7 亿年前 [5]，褪黑素与生物钟有密切关系，但是也不能作为判断睡眠的标准。

这个问题之所以让人困惑，因为我们还不完全清楚睡眠对每一级生物的意义，如果这些都清楚了，也许就可以回答单细胞生物有没有睡眠。

参考文献

[1] Raizen, David M., et al. "Lethargus is a Caenorhabditis elegans sleep-like state." Nature451.7178 (2008): 569-572.

[2] Kavanau, J. Lee. "Vertebrates that never sleep: implications for sleep’s basic function." Brain research bulletin 46.4 (1998): 269-279.

[3] Shein-Idelson, Mark, et al. "Slow waves, sharp waves, ripples, and REM in sleeping dragons." Science352.6285 (2016): 590-595.

[4] Rattenborg, Neils C., Charles J. Amlaner, and Steven L. Lima. "Behavioral, neurophysiological and evolutionary perspectives on unihemispheric sleep." Neuroscience & Biobehavioral Reviews 24.8 (2000): 817-842.

[5] Tosches, Maria Antonietta, et al. "Melatonin signaling controls circadian swimming behavior in marine zooplankton." Cell 159.1 (2014): 46-57.

-

查看知乎原文（5 条讨论）','3','2','2016-11-19' );
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '4','想进我们公司，先来测测你的性格吧','../static/images/img4.jpg','小红拖拉机，人力资源遇上心理学


1 面试和选拔，是人力资源管理中最重要的两个环节，绩效是效标

因为这两个人事决策不仅关乎业务发展能否持续，还牵扯到其他同事的满意度。而作为判断这一决策正确与否的标准，面试和选拔的效标 (criterion)，就是候选人在目标岗位的绩效。也就是选拔中得分高的候选人，在未来岗位上也能表现出更优秀的任务绩效和周边绩效（团结协作、组织承诺等），选拔得分和业务之间存在正相关关系。

但是这个得分也不是粗暴的分高就是最优选择，还要看评分是基于哪些评定指标，比如成就动机，中等水平比较适合，过高导致失败焦虑而行动力不足，或者过低缺乏动力，都不是最优选择。

另外还要结合特质与岗位的匹配性，比如按大五人格理论来评定一个人的性格特质，如果在外倾性、责任心、宜人性上表现出较高水平，则或许比较适合担任管理职务，而开放性得分较高，或许适合艺术与创作类职业，还要结合目标职位的特点具体来看。

2 人事决策中，面试和性格测试是不同的选拔工具

即便大家都知道传统非结构化面试的效度很低，但是人们还是习惯这一原始的方式，而且对此信心十足。当然，面试也有着其他选拔形式所不具有的优点，直观，并且可以亲身交流，对候选人来说有部分信息的真实工作预览，面试官也能直观感受将来共事的同事是否有感觉能合得来。

性格测试在人事决策应用时，大多信效度不高，尤其一些缺乏必要的心理学知识的 HR 或老板，选择用江湖心理学，从理论构念、量表编制、信效度检验、施测流程、报告解读，没有一步是标准化的，其信效度都低到马里亚纳海沟去了。

3 检验心理测验靠谱与否的关键点是信度(reliability)和效度(validity)

信效度好比感冒了医生给开了处方，每天 2 片感冒药。信度好比谨遵医嘱每天 2 片，效度好比感冒药的药效。你要是每天只吃 1 片，那药效肯定不够用，你要每天吃 2 片，但是吃的维生素，那也不管用。

所以有些信度低的心理测验，尤其是类型论的性格理论，今天一测某某某某类型，明天一测哎哟我去，又换了个花样。信度这么低的量表，先不说感冒药管用不管用，你这样吃药感冒好不了还得把细菌培养的有耐药性啊。

还有一些心理测验，测得很准，比如你喜欢吃苹果还是橙子，基本上信度能达到 1 的。但是测完也没有意义，因为它既不能预测你适合的职业兴趣，也不能预测你的目标岗位绩效。

效度往往因缺少具体的效标而不好测量，那我们就说信度，信度低的选拔工具用于人事决策弊大于利。

信度低就好比我们要选一个销售经理，老板说了“这个季度谁的业绩第一谁就来做销售经理”，好了，有些人拼了命那时间换空间，最后拼了个第一。但长期来说，他自己不仅销售能力差，管理能力也差，直接影响了组织绩效，还波及团队士气。

所以，用不稳定的工具选错一个人，不仅岗位或团队的业绩受到影响，甚至让那些在内部争取想要到目标岗位缺没有到成的人也是一种打击，提拔了那些能力低或不合适的人，对那些能力高和更匹配的内部候选人，是一种打击。长此以往，后果可想而知。

4 性格测评信度都不高，矬子里面拔出的将军，就是大五人格理

在测评量表编制中，总要有一个题目数量和施测成本之间的平衡，我们按照排列组合的原理，如果大家都是不计时间地认真作答，当然是题目越多越好，但实际上编制题目还要考虑到被试的耐心和时间上的经济性与可行性。因此题目的数量往往得到了最大的控制，而如果这些题目还被降维到迫选题，那信度又会收到一些影响，而如果理论还是类型论的性格理论。那信度又会砍掉一部分，最后信度就低的可怜了。

关于人格的假定之一就是人格具有跨时间的稳定性。可虽然我们用一些词来描述他人，但某些心理学家认为，证明人格特征保持稳定的证据并不太充分，而且人格特质并不能很好滴预测在特定环境下的行为表现。

有到是，大五不出，谁与争锋？

它前期汇集了韦氏词典里所有关于性格的约 15000 个词汇，你不可能再编造出一些性格词汇吧？
它通过语义学的分类，并经过统计学的探索性因子分析得来，他不是某人拍脑门拍出来的结果，而是心理学家帮整个人类做出来了一套东西，而且无论换成谁，沿着这个思路，都能做出来这个结果。
它经过跨时间和跨地域的验证，具有高度的稳定性，当然我国的足协副主席王登峰教授发现国人是有七个因素的(大七)，我国真是一个特殊的民族啊，但是我看完王老师总结的维度，总觉得四个字一串的，本身不具包容性，不是 hin 认同啊~


5 招聘与选拔中使用性格测评的弊端

心理测评往往是依赖于候选人的自陈量表所得结果。而测验的过程受到多方面原因的影响，往往难以取得既定的客观的测量目的。

粗心。即便是在问卷中嵌入一些常识类的低频率量表 (infrequency scale)，比如“我有时候熬粥不用水”，但仍然有接近 5%的人选择“是”。你们是有多粗心？

欺骗。候选人处于获得良好的评定结果的动机，往往在测评中选择“伪装好”。

反应定势。反应定势是一种与问题内容无关的反应的倾向，比如默认，凡是问题都愿意回答个“是”。另一个是极端反映，比如在 likert5 点量表里，凡是问题，不是选择特别相符(1)，就是特别不相符(5)两个极端值。

社会赞许性。社会赞许性是给人留下更好的印象的一种动机。虽然心理学家通过降低题目的社会赞许性和社会赞许性相当选项的迫选等方式，但是随着管理理论的普及和心理学知识的普及，候选人也知道要通过展示自己身上那些与目标岗位胜任素质相匹配的能力，才能获得更高的评价和入职机会。所以也学会了根据目标岗位的职责 -- 该岗位胜任素质 -- 我应该如何回答。

查看知乎原文（15 条讨论）','5','1','2016-11-19' );
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '5','就算是鸡蛋碰石头，也要溅他一身黄','../static/images/img5.jpg','王兆献
这部片子的精彩之处在于，没有像其它的片子一样，主角杀出一条血路，带领大家成功逃跑，而是最后主角绝望之下使出了最后手段，却发现其实毫无必要，希望就在几分钟后降临了，救援的军队来了，这个最后的片段显示了其它同类电影所未显示的主题：命运。

其实真的这种情况来了，就只有靠命，因为完全不知道会遇到什么情况，即如果这部电影里的人遇到是僵尸呢，他们很可能会被全挂，僵尸的攻击力比外星虫子还高级点。所以遇到什么是不可预知的。

完全不知道所做的决定是对是错，比如开始有人出去了，活了下来，后来有人出去了，结果被吃了，这其实都有偶然性，谁知道哪条路的上危机更大呢。比如晚上在室内打灯，结果由于趋光性虫子聚集，导致虫子的进攻。还有主角们的突围，其实说不定留在原地等待救援更好，但也说不定离开更好，面对危机时所做的决定，谈不上对与错。

所以，遇到这种情况，很大一部分就靠命 ，靠谁的命更好点吧。那是不是没有努力的地方呢，也不是，生死由命，但要坚持到死。

首先是要有理性，在这个电影里，超市货员小低老男，可以说是理性的化身，他去启动电机，以关闭闸门，射杀虫子，干掉邪教头头，出去找路，存储食物，最先找到汽车，整个片子里他最理性，可惜在车边被虫子给抓了，如果他在车里，到最后结局肯定不是这样，肯定会好很多的。

其次是要知识，比如大雾的扩散程度，这是可以计算出来的，几天内肯定是扩不到全世界的，比如已经看到军队在向基地里赶，证明这事已经在处理了，可以用知识进行分析和推理，但这些人没有进行知识的推理。

还就是要军事，军事技能的匮乏，是所有这种片子里的杯具，但也没有办法，因为平时大家遇到的少，片中军事的代表军人，就太弱了，连小女友也没救成，最后三个军人两个自杀一个被杀。而在超市里，一开始大家并没有武装起来，都在那里闲呆着，要是虫子们真的都进来，一次冲锋所有人都基本上要完蛋，最后有了些基本的武装，却用于自相残杀，而没勇气去杀虫子。

还有是要有勇气，只有勇气才能突破一切，男主角之所以是主角，是因为他有勇气，虽然他并不完美也不完善，但他拥有最可贵的勇气，包括去砍触手，出去找药，决定出去而不是呆在超市里，超市是离事故点挺近的，如果军队不给力，那么超市应该是外星虫子越来越多才对，所以向外走是正确的。

最后的最后，就是坚持到死，不管是什么事情，坚持到死，就算鸡蛋碰石头，也要溅他一身黄。面对这种情况，就是开启死亡模式，即意识到自己是终究是要挂的，在这些挂中寻找到一点生路，死亡是必须，生存才是偶然。

查看知乎原文（69 条讨论）','6','1','2016-11-19' );
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '6','生活总是悲伤的，我们必须接受它','../static/images/img2.jpg','弯尼
说东京物语伟大在哪，就必须先说小津伟大在哪。

小津是那种高度风格化的导演，如果你曾经看过小津，以后只要随便看一个镜头，不用任何介绍就立刻能分辨出是不是小津的片子。这样的风格来自他的电影语言——低角度拍摄、固定镜头、以建筑、自然元素为主的空镜头等等。

但这些形式化的东西实在没有办法说服我这是个伟大的导演，我觉得小津伟大的地方是他通过电影传达出的对世界的看法，这些世界观又和他独特的电影语言完美融合。

说得有点虚，我举几个例子说说。

小津电影里一个非常重要的主题是：生活是悲伤的，我们必须接受它。
《东京物语》里，父亲母亲带着多么大的期待去城里看子女啊。但生活永远是让人失望的。有所期待，就有所失望（所以绝望吧少年们保持本质的悲观才是得到所谓「幸福」的真谛啊）。子女忙于工作无暇陪同，老人们从大哥家推到市侩的妹妹家，最后被送到了都是年轻人地儿的泡温泉，夜间吵闹得老人一休无法入眠。要离开的一日，老父亲去会自己多年不见的朋友，在店里喝酒，回忆往事，感慨人生的不如意，谈及孩子时，无奈地说「也许孩子是永远不会达到我们的期待吧。」经历了年岁，人都不再有任何锐利激烈的表情，所有的失望化为淡淡的微笑，浮在苍老而温和的面容上。老人的东京之行结束了，父亲说，「我们这样应该算是好的了吧，我们应该感到幸运。」母亲说，「是啊。」

母亲刚回到家就开始生病，子女们拖拖拉拉赶了回来，母亲的生命已经结束。呆了一两天，子女就要赶回去，只有最孝顺的儿媳妇 Noriko 要留下来和父亲和他最小的女儿多陪几天。离开的时候，小女儿跟 Noriko 说，他们真自私。Noriko 说他们有自己的家庭和生活，儿女永远是离父母越来越远。（they have their family and life, daughters are always drifted away from their parents. ）小女儿低头看着地板，说，life , disappointing? Noriko 说，yes, nothing but disappointing.

失望又能怎么办呢，我们只有接受它。当个人意愿和社会文化冲突时，小津的主角永远是顺从文化环境、接受生活的面貌，而黑泽明的主角则要抗争到死。

所以小津要低角度拍摄，要把远处的建筑、海这些恒久的东西放在转换镜头里。所以小津电影里的人物大多是淡淡地笑着。

事情、快乐都是转瞬即逝，但生命是永恒的。一切都来源于平淡、归于平淡，让日常庄严。
我爱小津，因为他那么执着于那些生活里最普通的细节。情节永远是平淡的，甚至会故意把大的情节冲突故事转折从屏幕上去掉。拍《东京物语》，只是一场旅行，始终慢慢地静静地讲述。拍《晚春》，纪子最终还是妥协决定结婚了，但影片到此结束。重大的事件……结婚、别离、生死，小津把他们通通放在屏幕之外。因为小津相信，生活里其实没有超凡神奇的事物，最奇特的奇遇都可以被解释，一切皆来自平凡。生活是简单的，但人却不断地搅浑水，使之复杂化。世界本质是规律有序的系列，但它们通过细微呈现，处于无序状态。因此我们才相信异常、决裂和不和谐。

如果想感受下什么叫让日常庄严, 看下面这个视频,小津电影里镜头的完美剪辑,看到的时候觉得美死了有木有= =

[Favmore] 小津安二郎的经典走道镜头集锦 · Ozu - Passageways

反正我深深得爱着小津

 

[参考]:

德勒兹 《电影 2：时间—影像》

Deland Nuse, Direction and Authorship

查看知乎原文（21 条讨论）','2','0','2016-11-19' );
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '7','很多男人都想在大街上拯救一个雏妓吧','../static/images/img7.jpg','非常强烈的剧透，未观影的请不要看我的回答。

相较于还在偏执叛逆的那些孩子而言，人间师格都能够体会到那些种无法改变他人和自我的命运的悲哀。

而老师中的典型代表就是 Henry。小的时候就目睹了母亲因不堪他外公的性虐待，吞服安眠药自尽。他没有因为这样惨淡的童年而变得偏执愤世，而是从文学作品中找到了安慰。让他从绝望的深渊爬起，好似超脱了自己的苦难。

但是童年的暗影并没有消除，Henry 得到了再多的慰藉，童年的那一幕幕还是时不时的浮现在脑海中。看似超脱，依旧在痛苦之中。所以 Henry 还在艰难地摆渡，想要到达彼岸。

Henry 作为一个老师，他看到了很多很多的学生，在来自家庭的悲哀中挣扎。Henry 没有能力去把他们一个个地从这种黑暗中解放出来，他只能将从文字中获得的自我治愈，变成对学生的爱以及尊重。再刺头的学生，也能体会到他的这种善意，这种不失尊重的善意：

我没把你当孩子，也没把你当我需要救赎的对象，你就是你，你痛苦抑或不痛苦，你愤怒抑或不愤怒都是你的自由，我给你这份自由。这样你就不会感受到因为遭受我的扼制，而对我产生固执和偏见。

这个是 Henry 给学生种下希望的种子的先决条件，这个也是 Henry 能够超脱的部分。

然而带有尊重的善意，似乎是 Henry 的底线。Henry 把这种尊重的善意当做他的普世价值的时候，他的一个女学生，还有从外边带回家的小雏妓，却并没有这么觉得。她们觉得 Henry 的这份尊重是一种无以伦比的爱，如果失去了这种来自 Henry 的“爱”，则失去了生命中非常重要的一样宝物。在与女学生和带回家的小姑娘相处的过程中，Henry 却感觉到很强烈的需要分离出来的感受。他需要把这种对他人的救赎感与自我的救赎感分离开来。这种分离的感觉激起他对童年的回忆，变成了一种精神上的煎熬。他需要自我的独立性来救赎自己，也要保证女学生和小姑娘的人格独立，来让她们自我成长。

我能接引你们至渡口，但是我无法将你们摆渡至彼岸。你们要有自己的船，自己独立而为之。否则不能超脱，人间失格，不能为人。

女学生和小姑娘的依赖让 Henry 惊慌失措。小姑娘对 Henry 的依赖和照顾让 Henry 狠不下心来放开小姑娘。女学生拥抱 Henry 遭 Henry 的恋人同事误解，使 Henry 的内心崩溃爆发，他害怕在脑海中构建自己会是外公那样的精神变态的图景。Henry 陷入的恐慌，随着外公的去世无法在客观世界排解，而小姑娘的存在也使他无法超脱于自我的痛苦。一边是无法再超脱的痛苦，一边是与小姑娘真实的感情维系，Henry 的精神矛盾在此时达到最高点，他无法再维系自己的“超脱”带来的冷漠。于是 Henry 请人带走了小姑娘，自己一个人在家中默默哭泣。

最终女学生的自杀，让 Henry 发现了自己埋藏在之前的 Detachment 之中的恐慌。这种恐慌使他无法感受和表达自己更人性的那一面，使他感受到矛盾，使他说谎，使他刻意冷漠。恐慌会透过他的 Detachment 被靠近他的女学生和小姑娘感觉到。正是自己的恐慌，让女学生陷入了最终的绝境，而自己仿佛浑然不觉。

母亲的死亡让 Henry 产生了对于童年中阴影的 Detachment，母亲的爱和从文字中的慰藉，让 Henry 活下去并长大；

外公的活着让 Henry 拥有在客观意识上自己的形象意识与外公的形象意识之间存在 Detachment，从而能够让自己没有被外公的精神变态感染到，而外公的死亡使 Henry 需要直面自己分离开来但需要化解的自我不认同；

女学生的死亡让 Henry 明白了自己的 Detachment 之下，有对自我不认同的恐慌，这种恐慌让自己用冷漠伪装自己，对人对己都有害。

三个人的死亡最终让 Henry 超脱了自己的“超脱”……获得了最后的 Detachment 的 Henry，终于明白自己要放下自己的恐慌和冷漠，学会表达自己的爱，表达自己真实的情感。

片尾 Henry 去看望小姑娘 Erica，他的笑容和与小姑娘 Erica 的拥抱，就是 Henry 最终超脱出来的象征。

拥抱自己，拥抱自己最真实的情感，从恐惧以及冷漠中超脱出来。

 

And never have I felt so deeply at one and the same time so detached from myself and so present in the world.

我从未如此深切地感受到，我的灵魂与我之间的距离如此遥远,而我的存在却如此依赖于这个世界。

查看知乎原文（21 条讨论）','4','1','2016-11-19' );
INSERT INTO firstapp_article ( id,title,img,content,views,likes,createtime ) VALUES ( '8','小事 · 神啊，赐我一个异性吧','../static/images/hou180.jpg','* * *

在女生特别多的学校上大学

是一种怎样的体验？

答：毕业之后聚会，

我这桌坐了 3 个前女友。

via 知友 @Mac涛

* * *

在男生特别多的学校上大学是一种怎样的体验？

 匿名用户
所属班级 50 个人有 8 个女生，不是比例最惨的还能想想其他专业来安慰自己。平均每隔几天还是能和女生说上话的，不是食堂大妈和麻麻哦，路上 say hi 就可以很开心，又和女生说上话了(┬＿┬)。

男生多的地方确实生活蛮枯燥的，需要自己时不时找点乐子调剂心情。一直觉得在男女比例不平衡的地方待久了是一种伤害，对于大家的赞我是会负责到底的！！

1.不是有那种评比各校校花的图嘛，人家学校的妹子都水灵灵的特别好看啊，翻到最后发现，我去，我们学校的图是真的校花啊！！水灵灵的还沾着露水呢！什么情况啊(┬＿┬)。

2.记得大一入学军训，正站着队列呢，旁边一哥们说，哎你知道吗，在这地方待得越久，我越觉得每个女生都有可取之处，做女朋友都不亏。我一脸的懵逼，什么鬼，这才第二周好吗？你哪看出来的不亏了。后来的后来，我越来越觉得这哥们说的话也还是蛮有道理的。

3.如果不是因为学习委员是女生，可能有些人一个学期也不会和女生能说上一次话，食堂大妈和 mama 除外。

4.一老乡学弟是学力学的，开学第一天就跟我诉苦：学长我被我们老师嘲笑了。我：怎么啦，你干了啥？学弟：我什么都没干啊，就是点名的时候，那老师拿着名单看了半天，突然说，你们班怎么一个女生都没有啊！然后就一个人哈哈哈笑了好久，学长我好委屈。 我都不知道怎么回他。

5.因为没什么妹子，就必须有人勇敢站出来充当妹子的角色，一般都是比较有肉感的那种。大家摸起来就比较有手感，一般会说：“嗯，好像胸又小了，哥哥来帮帮你。”而那种比较怕痒的摸起来比较有成就感。

6.最开始的时候，没有妹子的活动就没有积极性。比如：“唱歌去啊”“有妹子吗”“没有”“那一帮基佬去有什么好唱的”，由此引申出“一帮基佬去看什么电影”“一帮基佬去爬什么山”“一帮基佬去吃什么饭”，再后来，发现不一帮基佬的话就什么也干不了，还是都去了。

7.接 6，一开始的活动非常想要有妹子，后来待久了，活动中有妹子反而很紧张。和妹子一起走路会紧张，食堂一张桌子会紧张，上课坐妹子旁边会紧张，连公交车坐妹子旁边都觉得好不自在。我感觉得了一种碰到妹子就会石化的病。

8.和男生一起多了，就不会太注意形象，一双拖鞋可以去食堂，去商店，去想去的任何地方。

9.口中经常性的“卧槽”“叼得飞起”“靠，爆炸”“high 一波”“买，买他妈的”，连寝室无线名字都是跟大爷有关，然后一说起正经话来就觉得好卡壳，特别面对妹子时都不知道聊什么，直接 GG 思密达。

10.男生多了有个好处，想要干什么事哥们们来得特别快。“打球”“走”“走”“走”“走”“走”，人就够了，“开黑”“开”“开”“开”“开”，人又够了。“我失恋了”“走，喝酒”“你选地方，我过来”。最后这个是假的，我哪有什么恋可失(┬＿┬)。喝酒有人陪是真的。

11.大家一致同意，只要以不弯为基本底线，审美跌到哪儿都不要紧。

12.迎新的话只要是学妹就会冒出成吨的学长，学弟嘛，请务必好好感谢愿意接你行李的那个人，他很有可能是被坑队友给推出来的。后来某某通过迎新真的把到了学妹，大家当着他妹子的面在大门口路灯上阿了十几圈。

13.由 12 想到的，阿鲁巴是个人人都会的庆祝方式，过生日得小心。

14.发现用粉色的任何物品会被黑一年。

15.对于班上的妹子，一开始的确是公主般的存在，久了吧（汉化之后），就习惯成自然一视同仁了。妹子会受到更多的照顾这是必须的，班级有什么东西都会让妹子们先选先做决定然后男生们再配合的。平时不会一起玩也是真的，不会找聊天也是真的。

16.每次去别人学校都会感慨人生，看到有 4 个以上的妹子走一排会怀疑是幻觉。

17.男生多了，干什么都特别干脆。说走就走。扭扭捏捏就没人和你玩了。

18.看点闲书就会被说文艺。哭着解释说这是这学期的第二本啊，也没用。

19.旁边艺校的门卫拦我们一拦一个准，感觉脸上写了字根本混不进去

20.自黑互黑成瘾，平时不会直接称呼名字，一般是：阿浩，浩浩，耗子，菜逼浩，傻逼 X，智障 X，胸毛 X，个个意外的顺口又羞耻。聊的话题多是游戏和妹子，不信你们往上数数我聊了多少条。

查看知乎原文（560 条讨论）','6','1','2016-11-19' );
CREATE TABLE "firstapp_article_collected_by" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "article_id" integer NOT NULL REFERENCES "firstapp_article" ("id"), "userprofile_id" integer NOT NULL REFERENCES "firstapp_userprofile" ("id"));
INSERT INTO firstapp_article_collected_by ( id,article_id,userprofile_id ) VALUES ( '3','2','6' );
INSERT INTO firstapp_article_collected_by ( id,article_id,userprofile_id ) VALUES ( '4','3','6' );
INSERT INTO firstapp_article_collected_by ( id,article_id,userprofile_id ) VALUES ( '5','4','6' );
INSERT INTO firstapp_article_collected_by ( id,article_id,userprofile_id ) VALUES ( '7','8','6' );
INSERT INTO firstapp_article_collected_by ( id,article_id,userprofile_id ) VALUES ( '8','7','6' );
INSERT INTO firstapp_article_collected_by ( id,article_id,userprofile_id ) VALUES ( '10','3','5' );
INSERT INTO firstapp_article_collected_by ( id,article_id,userprofile_id ) VALUES ( '12','5','6' );
CREATE TABLE "firstapp_comment" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(500) NOT NULL, "avatar" varchar(250) NOT NULL, "comment" text NULL, "createtime" date NOT NULL, "belong_to_id" integer NULL REFERENCES "firstapp_article" ("id"));
INSERT INTO firstapp_comment ( id,name,avatar,comment,createtime,belong_to_id ) VALUES ( '1','catcuts','static/images/default.png','miao','2016-11-21','5' );
CREATE TABLE "firstapp_ticket" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "article_id" integer NOT NULL REFERENCES "firstapp_article" ("id"), "voter_id" integer NOT NULL REFERENCES "auth_user" ("id"), "choice" varchar(10) NOT NULL);
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '1','1','6','dislike' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '2','5','6','like' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '3','2','6','like' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '4','3','6','like' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '5','4','6','like' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '6','8','6','like' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '7','7','6','like' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '8','2','5','dislike' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '9','3','5','like' );
INSERT INTO firstapp_ticket ( id,article_id,voter_id,choice ) VALUES ( '10','6','5','dislike' );
CREATE TABLE "firstapp_userprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "realname" varchar(50) NULL, "sex" varchar(20) NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id"), "avatar" varchar(100) NULL);
INSERT INTO firstapp_userprofile ( id,realname,sex,user_id,avatar ) VALUES ( '1','','Xmale','1','' );
INSERT INTO firstapp_userprofile ( id,realname,sex,user_id,avatar ) VALUES ( '2','','Xmale','2','' );
INSERT INTO firstapp_userprofile ( id,realname,sex,user_id,avatar ) VALUES ( '3','','Xmale','3','' );
INSERT INTO firstapp_userprofile ( id,realname,sex,user_id,avatar ) VALUES ( '4','','xale','4','upload/img-923bd12e4bd25031efcc4d96123dd070_KSo5dQn.jpg' );
INSERT INTO firstapp_userprofile ( id,realname,sex,user_id,avatar ) VALUES ( '5','猫切','female','5','upload/img-923bd12e4bd25031efcc4d96123dd070_qF57Tuf.jpg' );
INSERT INTO firstapp_userprofile ( id,realname,sex,user_id,avatar ) VALUES ( '6','猫切','female','6','upload/img-923bd12e4bd25031efcc4d96123dd070_WqxZuFA_OvCvvJN.jpg' );
INSERT INTO firstapp_userprofile ( id,realname,sex,user_id,avatar ) VALUES ( '7','','Xmale','7','' );
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_group_permissions_group_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE UNIQUE INDEX "auth_permission_content_type_id_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE INDEX "firstapp_article_collected_by_9c2a73e9" ON "firstapp_article_collected_by" ("userprofile_id");
CREATE INDEX "firstapp_article_collected_by_a00c1b00" ON "firstapp_article_collected_by" ("article_id");
CREATE UNIQUE INDEX "firstapp_article_collected_by_article_id_b711b291_uniq" ON "firstapp_article_collected_by" ("article_id", "userprofile_id");
CREATE INDEX "firstapp_comment_12824445" ON "firstapp_comment" ("belong_to_id");
CREATE INDEX "firstapp_ticket_49fb0f8b" ON "firstapp_ticket" ("voter_id");
CREATE INDEX "firstapp_ticket_a00c1b00" ON "firstapp_ticket" ("article_id");
