# spring-boot-data-jdbc
[toc]
> Spring-data-jdbc 的使用。
# 一、项目开发
## 1. 数据库
### 1.1 创建数据库
```sql
CREATE DATABASE db_test;
```
### 1.2 创建表
```sql
CREATE TABLE `t_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `country_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `country_code` varchar(255) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COMMENT='国家信息';
```
### 1.4 插入数据
```sql
INSERT INTO `t_country` VALUES ('1', 'Angola', 'AO');
INSERT INTO `t_country` VALUES ('2', 'Afghanistan', 'AF');
INSERT INTO `t_country` VALUES ('3', 'Albania', 'AL');
INSERT INTO `t_country` VALUES ('4', 'Algeria', 'DZ');
INSERT INTO `t_country` VALUES ('5', 'Andorra', 'AD');
INSERT INTO `t_country` VALUES ('6', 'Anguilla', 'AI');
INSERT INTO `t_country` VALUES ('7', 'Antigua and Barbuda', 'AG');
```
## 2. 项目结构介绍



# 二、配置详述