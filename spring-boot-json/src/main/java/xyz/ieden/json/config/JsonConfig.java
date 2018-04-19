package xyz.ieden.json.config;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import org.springframework.boot.autoconfigure.http.HttpMessageConverters;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;

import java.util.ArrayList;
import java.util.List;

/**
 * @author ThinkPad
 * @date Created by 2018/4/17 15:18
 */
@Configuration
public class JsonConfig {

//    @Bean
//    public HttpMessageConverters fastJsonHttpMessageConverters() {
//        // 1、需要先定义一个 convert 转换消息的对象;
//        FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();
//
//        //2、添加fastJson 的配置信息，比如：是否要格式化返回的json数据;
//        FastJsonConfig fastJsonConfig = new FastJsonConfig();
//        fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);
//
//        //2-1 处理中文乱码问题
//        List<MediaType> fastMediaTypes = new ArrayList<>();
//        // 定义格式类型与编码
//        fastMediaTypes.add(MediaType.APPLICATION_JSON_UTF8);
//        fastConverter.setSupportedMediaTypes(fastMediaTypes);
//
//        //3、在convert中添加配置信息.
//        fastConverter.setFastJsonConfig(fastJsonConfig);
//
//        HttpMessageConverter<?> converter = fastConverter;
//        return new HttpMessageConverters(converter);
//    }
}
