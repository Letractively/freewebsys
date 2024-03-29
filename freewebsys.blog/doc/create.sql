CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

insert into user(Host,User,PASSWORD) values('localhost','wordpress',password('wordpress'));




GRANT ALL PRIVILEGES ON wordpress.* TO wordpress@"localhost";

FLUSH PRIVILEGES;

CREATE DATABASE free_blog DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


--评论表。
CREATE TABLE `comment` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `author` tinytext NOT NULL,
  `author_email` varchar(100) NOT NULL default '',
  `author_url` varchar(200) NOT NULL default '',
  `author_ip` varchar(100) NOT NULL default '',
  `create_date` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

com.freewebsys.blog

--友情链接表。
CREATE TABLE `Link` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `target` varchar(25) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `visible` bigint(20) NOT NULL default 'Y',
  `order_id` bigint(20) NOT NULL ,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




--属性配置表
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `blog_id` int(11) NOT NULL default '0',
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 

--文章表
CREATE TABLE `post` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `author_id` bigint(20) unsigned NOT NULL default '0',
  `create_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 


--分类关系表
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--项目 文章分类。
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



com.freewebsys.blog

--用户表
CREATE TABLE `UserInfo` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `login_name` varchar(60) NOT NULL default '',
  `passwd` varchar(64) NOT NULL default '',
  `display_name` varchar(50) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `url` varchar(100) NOT NULL default '',
  `reg_time` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

密码 111111 线上系统不要使用!!!!
3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d

insert into blog_user_info(login_name,passwd,display_name,status)
values('admin','3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d','wordpress',1);


--tags 分类

