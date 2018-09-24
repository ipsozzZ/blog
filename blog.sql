# Host: localhost  (Version: 5.5.53)
# Date: 2018-09-24 22:41:30
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "article"
#

CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT '所属栏目id',
  `title` varchar(100) DEFAULT '' COMMENT '文章标题',
  `pic` varchar(100) DEFAULT NULL COMMENT '文章图片',
  `author` varchar(50) DEFAULT '' COMMENT '文章作者',
  `keywords` varchar(50) DEFAULT NULL COMMENT '关键字',
  `views` int(11) DEFAULT NULL COMMENT '点击量',
  `remark` varchar(200) DEFAULT NULL COMMENT '描述',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '文章内容',
  `addTime` int(10) DEFAULT '0' COMMENT '文章添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

#
# Data for table "article"
#


#
# Structure for table "cate"
#

CREATE TABLE `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '上级栏目',
  `pic` varchar(100) DEFAULT NULL COMMENT '栏目图片',
  `remark` varchar(200) DEFAULT NULL COMMENT '摘要',
  `keyword` varchar(200) DEFAULT NULL COMMENT '关键字',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `isShow` tinyint(1) DEFAULT '0' COMMENT '栏目是否显示：1 显示，0：隐藏',
  `content` text COMMENT '栏目内容',
  `mark` varchar(30) DEFAULT NULL COMMENT '栏目标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "cate"
#


#
# Structure for table "comment"
#

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL COMMENT '文章id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text COMMENT '互动内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户互动表';

#
# Data for table "comment"
#


#
# Structure for table "config"
#

CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` text COMMENT '网站配置，这里字符串形式储存',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置表';

#
# Data for table "config"
#


#
# Structure for table "loginlog"
#

CREATE TABLE `loginlog` (
  `mid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `loginIP` int(11) DEFAULT '0' COMMENT '登录ip',
  `loginTime` int(10) DEFAULT '0' COMMENT '登录时间',
  `loginMSG` varchar(200) DEFAULT '' COMMENT '登录信息'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员登录日志表';

#
# Data for table "loginlog"
#

INSERT INTO `loginlog` VALUES (1,1270,1536917338,'管理员密码不正确'),(1,1270,1536917636,'管理员登录成功!!!'),(2,1270,1536922638,'管理员登录成功!!!'),(1,1270,1536924663,'管理员登录成功!!!'),(1,1270,1536929329,'管理员密码不正确'),(1,1270,1536929339,'管理员登录成功!!!'),(8,1270,1536935222,'管理员登录成功!!!'),(9,1270,1536938090,'管理员登录成功!!!'),(1,1270,1537584745,'管理员密码不正确'),(1,1270,1537584762,'管理员登录成功!!!'),(1,1270,1537594326,'管理员登录成功!!!'),(1,1270,1537671464,'管理员登录成功!!!');

#
# Structure for table "manager"
#

CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT 'admin' COMMENT '管理员账号',
  `password` varchar(50) DEFAULT '00000000' COMMENT '管理员密码',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '管理员状态：0：锁定，1：正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='管理员表';

#
# Data for table "manager"
#

INSERT INTO `manager` VALUES (1,'test1','25d55ad283aa400af464c76d713c07ad',1),(8,'test2','25d55ad283aa400af464c76d713c07ad',1),(10,'text4','25d55ad283aa400af464c76d713c07ad',1);

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT '' COMMENT '用户名',
  `password` varchar(30) DEFAULT '00000000' COMMENT '用户密码',
  `email` varchar(30) DEFAULT '' COMMENT '用户邮箱',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "user"
#


#
# Structure for table "viewslog"
#

CREATE TABLE `viewslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT '0' COMMENT '文章id',
  `viewTime` int(10) DEFAULT NULL COMMENT '浏览时间',
  `viewIP` varchar(15) DEFAULT NULL COMMENT '浏览IP',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='读者浏览日志';

#
# Data for table "viewslog"
#

