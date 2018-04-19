# spring-boot-json
<!-- TOC -->

- [spring-boot-json](#spring-boot-json)
    - [一、应用场景](#一应用场景)
        - [1. 背景介绍](#1-背景介绍)
            - [1.1 JSON 框架介绍](#11-json-框架介绍)
            - [1.2 Spring Json 框架](#12-spring-json-框架)
        - [2. JSON 在 WEB 中的使用](#2-json-在-web-中的使用)
    - [二、工程介绍](#二工程介绍)
        - [1. 使用 Jackson](#1-使用-jackson)
            - [1.1 使用](#11-使用)
        - [2. 使用 FastJson](#2-使用-fastjson)
            - [2.1 修改 Spring 的 JSON 解析器](#21-修改-spring-的-json-解析器)
            - [2.2 使用](#22-使用)
    - [三、代码详解](#三代码详解)

<!-- /TOC -->
## 一、应用场景

### 1. 背景介绍
#### 1.1 JSON 框架介绍
目前主流的 JSON 框架包括：`json-lib`、`Gson`、`Jackson`、`FastJson` 等。
- **json-lib**

`json-lib` 已经放弃维护，因此在新项目中已经很少使用，而且引用时需要指定 JDK 版本，如下所示：
```xml
<dependency>
    <groupId>net.sf.json-lib</groupId>
    <artifactId>json-lib</artifactId>
    <version>2.4</version>
    <classifier>jdk15</classifier>
</dependency>
```

- **Gson**

`Gson` 是 Google 开发的一个开源框架，在项目中需要使用 JSON 解析框架可以使用该框架。
```xml
<dependency>
    <groupId>com.google.code.gson</groupId>
    <artifactId>gson</artifactId>
    <version>2.8.2</version>
</dependency>

```
学习地址：

[Gson使用](https://blog.csdn.net/axuanqq/article/details/51441590)

[Gson使用](http://412887952-qq-com.iteye.com/blog/2291500)

- **Jackson**

`Jackson` 是 spring 框架自身使用的 JSON 框架，因此在使用 Spring 系列框架时，默认使用的就是 `Jackson`，而且不需要额外的配置。

- **FastJson**

`FastJson` 是 Alibaba 开发的一个高性能 JSON 解析框架。在实际的生产中使用较广。

#### 1.2 Spring Json 框架

在 Spring 框架中默认的 JSON 解析器为 `Jackson`，但是许多生产中更多使用的是 `FastJson`，因此就需要更换 Spring 框架的 JSON 解析器。

### 2. JSON 在 WEB 中的使用

在一般的 jar 项目中，JSON 更多的是一种数据传输的格式，但是在 WEB 项目中却要求更多，如指定时间格式、忽略持久化某些字段、过滤 NULL 值等。

- **指定时间格式**

返回的时间需要指定统一的格式。

一般采用的方式是通过 Java 代码实现格式化，但是此方法很不灵活。可以使用 JSON 的格式化功能，对返回的 Date 类型进行转换。

- **忽略某些字段**

返回的数据需要对敏感的字段进行过滤，如密码等。

- **过滤 NULL 值**

返回的数据中包含有些字段的 value 是 NULL 时，为了节省数据大小，需要将这些 NULL 值的字段进行过滤。

## 二、工程介绍
### 1. 使用 Jackson
#### 1.1 使用
- 定义日期格式

> Jackson的格式化时间是0时区，因此需要通过 timezone 来指定时区。
```java
public class UserInfo implements Serializable{
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;
}
```

- 忽略某些字段

```java
public class UserInfo implements Serializable{
    @JsonIgnore
    private String userPwd;
}
```

- 过滤 NULL 项
```java
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class UserInfo implements Serializable{
      
}
```

### 2. 使用 FastJson
#### 2.1 修改 Spring 的 JSON 解析器
修改 Spring 的 JSON 解析其的方式：
- 方式1：继承 WebMvcConfigurerAdapter

> Spring-boot v2 已经放弃 `WebMvcConfigurerAdapter`，因此该方式只能在低版本上使用。

继承`WebMvcConfigurerAdapter`覆写`configureMessageConverters`，定义`FastJsonHttpMessageConverter`对象，然后进行基本的设置，最后添加到`List<HttpMessageConverter<?>>`中。

```java
@Configuration
public class JsonConfiguration extends WebMvcConfigurerAdapter{

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        super.configureMessageConverters(converters);
        FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();
        FastJsonConfig fastJsonConfig = new FastJsonConfig();
        fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);
        fastConverter.setFastJsonConfig(fastJsonConfig);
        converters.add(fastConverter);
    }
}
```

- 方式2：生成 `HttpMessageConverters` bean

> 推荐使用方式

在配置类中生成 `HttpMessageConverters`。

```java_holder_method_tree
@Bean
public HttpMessageConverters fastJsonHttpMessageConverters() {
    // 1、需要先定义一个 convert 转换消息的对象;
    FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();

    //2、添加fastJson 的配置信息，比如：是否要格式化返回的json数据;
    FastJsonConfig fastJsonConfig = new FastJsonConfig();
    fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);

    //2-1 处理中文乱码问题
    List<MediaType> fastMediaTypes = new ArrayList<>();
    fastMediaTypes.add(MediaType.APPLICATION_JSON_UTF8);
    fastConverter.setSupportedMediaTypes(fastMediaTypes);

    //3、在convert中添加配置信息.
    fastConverter.setFastJsonConfig(fastJsonConfig);

    HttpMessageConverter<?> converter = fastConverter;
    return new HttpMessageConverters(converter);
}
```
#### 2.2 使用
- 定义日期格式

> FastJson 会自动调整时区，不需要定义时区。

```java
public class UserInfo implements Serializable{
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
}
```

- 过滤不返回项

```java
public class UserInfo implements Serializable{
    @JSONField(serialize = false)
    private String userPwd;
}

```
- 过滤 NULL 项

> FastJson 自动会将 NULL 项过滤掉。

- 定义返回的 key 值

```java
public class UserInfo implements Serializable{
    @JSONField(name = "user_id")
    private Integer userId;
    @JSONField(name = "user_name")
    private String userName;
}
```

## 三、代码详解