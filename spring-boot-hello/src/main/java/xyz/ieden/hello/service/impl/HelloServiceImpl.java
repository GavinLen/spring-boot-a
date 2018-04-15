package xyz.ieden.hello.service.impl;

import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import xyz.ieden.entity.Result;
import xyz.ieden.hello.service.IHelloService;
import xyz.ieden.util.ResultUtils;

import java.util.Date;

/**
 * @author Gavin
 * @date 2018.04.15
 */
@Service
public class HelloServiceImpl implements IHelloService {

    private static final Logger LOGGER = LoggerFactory.getLogger(HelloServiceImpl.class);

    @Override
    public Result<JSONObject> toHello() {
        LOGGER.info("HelloServiceImpl.toHello()");
        Result<JSONObject> result = ResultUtils.createResult();
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("data", new Date());
        result.setData(jsonObject);
        return result;
    }
}
