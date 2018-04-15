package xyz.ieden.hello.controller;

import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import xyz.ieden.entity.Result;
import xyz.ieden.hello.service.IHelloService;

/**
 * @author Gavin
 * @date 2018.04.15
 */
@RestController
@RequestMapping(value = "hello")
public class HelloController {

    private static final Logger LOGGER = LoggerFactory.getLogger(HelloController.class);

    @Autowired
    private IHelloService helloService;

    @GetMapping(value = "to")
    public Result<JSONObject> toHello() {
        LOGGER.info("To Hello");
        Result<JSONObject> result = helloService.toHello();
        return result;
    }

}
