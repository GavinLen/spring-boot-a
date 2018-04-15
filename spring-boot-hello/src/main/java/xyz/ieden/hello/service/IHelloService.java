package xyz.ieden.hello.service;

import com.alibaba.fastjson.JSONObject;
import xyz.ieden.entity.Result;

/**
 * @author Gavin
 * @date 2018.04.15
 */
public interface IHelloService {

    /**
     * Service 测试方法
     *
     * @return
     */
    Result<JSONObject> toHello();
}
