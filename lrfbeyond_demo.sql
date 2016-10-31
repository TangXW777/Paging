/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : lrfbeyond_demo

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-10-31 12:20:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pubdate` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('187', 'HTML5应用之时钟', '1346856092');
INSERT INTO `article` VALUES ('150', '自适应的网格布局-砌墙效果', '1322294653');
INSERT INTO `article` VALUES ('151', '图片延迟加载技术-Lazyload的应用', '1323418419');
INSERT INTO `article` VALUES ('152', '滚屏加载--无刷新动态加载数据技术的应用', '1324715776');
INSERT INTO `article` VALUES ('153', 'Ajax应用：使用jQuery和PHP实现功能开关效果', '1325776451');
INSERT INTO `article` VALUES ('154', 'Flowplayer-一款免费的WEB视频播放器', '1326016920');
INSERT INTO `article` VALUES ('155', 'Highcharts-功能强大的图表库的应用', '1326522351');
INSERT INTO `article` VALUES ('156', 'Highcharts选项配置详细说明文档', '1326719630');
INSERT INTO `article` VALUES ('157', '使用Highcharts生成折线图与曲线图', '1326895515');
INSERT INTO `article` VALUES ('158', '使用Highcharts生成柱状图', '1327025096');
INSERT INTO `article` VALUES ('159', '使用Highcharts结合PHP与Mysql生成饼状图', '1327918320');
INSERT INTO `article` VALUES ('160', '使用Highcharts实现柱状图、饼状图、曲线图三图合一', '1329039730');
INSERT INTO `article` VALUES ('161', 'jqGrid：强大的表格插件的应用', '1330074189');
INSERT INTO `article` VALUES ('162', 'jqGrid中文说明文档——选项设置', '1330234635');
INSERT INTO `article` VALUES ('163', 'jqGrid中文说明文档——事件和方法', '1330318428');
INSERT INTO `article` VALUES ('164', 'jqGrid表格应用——读取与查询数据', '1330591560');
INSERT INTO `article` VALUES ('165', 'jqGrid表格应用——新增与删除数据', '1330919816');
INSERT INTO `article` VALUES ('166', '使用jQuery实现跨域提交表单数据', '1331386130');
INSERT INTO `article` VALUES ('167', '浅谈响应式WEB设计', '1333072250');
INSERT INTO `article` VALUES ('168', '日期选择器：jquery datepicker的使用', '1333890332');
INSERT INTO `article` VALUES ('169', '日期时间选择器：datetimepicker', '1334306433');
INSERT INTO `article` VALUES ('170', '性能优化：如何更快速加载你的JS页面', '1335099220');
INSERT INTO `article` VALUES ('171', '使用PHP导入和导出CSV文件', '1335949304');
INSERT INTO `article` VALUES ('172', '使用PHP导入Excel和导出数据为Excel文件', '1336833793');
INSERT INTO `article` VALUES ('173', '使用PHP生成和获取XML格式数据', '1337485842');
INSERT INTO `article` VALUES ('174', 'HTML5教程和参考手册分享', '1337868595');
INSERT INTO `article` VALUES ('175', 'jQuery实现多级手风琴菜单', '1337952939');
INSERT INTO `article` VALUES ('176', '响应式WEB设计：将导航菜单转换成下拉菜单以适应小屏幕设备', '1338529515');
INSERT INTO `article` VALUES ('177', '使用HTML5的Audio标签打造WEB音频播放器', '1339598461');
INSERT INTO `article` VALUES ('178', 'Javascript+PHP实现在线拍照功能', '1340860377');
INSERT INTO `article` VALUES ('179', 'jQuery+PHP+Mysql在线拍照和在线浏览照片', '1341836937');
INSERT INTO `article` VALUES ('180', 'HTML5视频标签video', '1342165895');
INSERT INTO `article` VALUES ('181', '页面前端的水有多深？', '1342239180');
INSERT INTO `article` VALUES ('182', 'jQuery倒计时', '1342938362');
INSERT INTO `article` VALUES ('183', '使用jQuery+PHP+Mysql实现抽奖程序', '1343566149');
INSERT INTO `article` VALUES ('184', 'PHP+jQuery实现翻板抽奖', '1344063552');
INSERT INTO `article` VALUES ('185', 'HTML5之画布Canvas', '1345122224');
INSERT INTO `article` VALUES ('186', 'PHP+jQuery+Ajax+Mysql实现发表心情功能', '1345615563');
INSERT INTO `article` VALUES ('188', '基于jQuery+JSON的省市联动效果', '1347458264');
INSERT INTO `article` VALUES ('189', 'jQuery+php实现ajax文件即时上传', '1348398783');
INSERT INTO `article` VALUES ('190', '根据IP定位用户所在城市信息', '1348663533');
INSERT INTO `article` VALUES ('191', 'PHP生成各种验证码和Ajax验证', '1349525471');
INSERT INTO `article` VALUES ('192', 'HTML5应用之文件拖拽上传', '1350480671');
INSERT INTO `article` VALUES ('193', '一款基于jQuery的颜色拾取器', '1351523466');
INSERT INTO `article` VALUES ('194', 'jQuery实现页面滚动时元素智能定位', '1351688409');
INSERT INTO `article` VALUES ('195', 'jQuery+Ajax+PHP+Mysql实现分页显示数据', '1352125590');
INSERT INTO `article` VALUES ('196', 'jQuery实现返回顶部按钮效果', '1353217028');
INSERT INTO `article` VALUES ('197', 'jQuery+Ajax+PHP实现“喜欢”评级功能', '1353590248');
INSERT INTO `article` VALUES ('198', '使用jQuery和CSS将背景图片拉伸', '1353940570');
INSERT INTO `article` VALUES ('199', 'timeago.js自动将时间戳转换为更易读的时间轴', '1355158678');
INSERT INTO `article` VALUES ('200', 'HTML5+CSS3打造可自动获得焦点和支持语音输入的超酷搜索框', '1355400595');
INSERT INTO `article` VALUES ('201', 'HTML5本地存储', '1355925764');
INSERT INTO `article` VALUES ('202', '分享一款基于jQuery的QQ表情插件', '1356527449');
INSERT INTO `article` VALUES ('203', 'Javascript与HTML5的canvas实现图片旋转效果', '1357737224');
INSERT INTO `article` VALUES ('204', 'PHP递归实现无限级分类', '1358252514');
INSERT INTO `article` VALUES ('205', '使用PHPMailer发送带附件并支持HTML内容的邮件', '1359461653');
INSERT INTO `article` VALUES ('206', 'PHP+Mysql+jQuery统计当前在线用户数', '1360999500');
INSERT INTO `article` VALUES ('207', 'jQuery实现等比例缩放大图片', '1362236073');
INSERT INTO `article` VALUES ('208', '速度超快的菜单切换效果', '1363182955');
INSERT INTO `article` VALUES ('209', '使用Ctrl+Enter提交表单', '1363615171');
INSERT INTO `article` VALUES ('210', '使用PHP采集远程图片', '1363960502');
INSERT INTO `article` VALUES ('211', 'jQuery时间轴插件：jQuery Timelinr', '1364393950');
INSERT INTO `article` VALUES ('212', 'jQuery Easing 动画效果扩展', '1365428407');
INSERT INTO `article` VALUES ('213', '超酷的固定菜单页面滚动效果', '1365921498');
INSERT INTO `article` VALUES ('214', 'PHP+Mysql+jQuery实现文件下载次数统计', '1366639853');
INSERT INTO `article` VALUES ('215', '幸运大转盘-jQuery+PHP实现的抽奖程序(上)', '1367244989');
INSERT INTO `article` VALUES ('216', '幸运大转盘-jQuery+PHP实现的抽奖程序(下)', '1367501196');
INSERT INTO `article` VALUES ('217', 'jQuery数字滚动展示效果', '1368538200');
INSERT INTO `article` VALUES ('218', '砸金蛋：jQuery+PHP实现的砸金蛋中奖程序', '1369406421');
INSERT INTO `article` VALUES ('219', '响应式内容滑动插件bxSlider', '1370350238');
INSERT INTO `article` VALUES ('220', 'jQuery+HTML5声音提示', '1371218736');
INSERT INTO `article` VALUES ('221', 'WEB开发中常用的正则表达式', '1371558930');
INSERT INTO `article` VALUES ('222', 'Zclip：复制页面内容到剪贴板兼容各浏览器', '1372769186');
INSERT INTO `article` VALUES ('223', 'jQuery实现的向下推送图文信息滚动效果', '1373034355');
INSERT INTO `article` VALUES ('224', 'FileReader：读取本地图片文件并显示', '1374496739');
INSERT INTO `article` VALUES ('225', 'iPictrue：图片标注提示', '1375624096');
INSERT INTO `article` VALUES ('226', '使用jquery.qrcode生成二维码', '1375970580');
INSERT INTO `article` VALUES ('227', 'PHP汉字拼音转换和公历农历转换', '1376716887');
INSERT INTO `article` VALUES ('228', 'PHP用户注册邮箱验证激活帐号', '1377694338');
INSERT INTO `article` VALUES ('229', 'PHP+Mysql+jQuery找回密码', '1377694339');
INSERT INTO `article` VALUES ('230', '关于pagination的使用', '1323424234');
