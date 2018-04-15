package xyz.ieden.service;

import com.alibaba.fastjson.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import xyz.ieden.entity.Result;
import xyz.ieden.hello.HelloApplication;
import xyz.ieden.hello.service.IHelloService;

/**
 * Created by Gavin on 2018.04.15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
//@SpringBootTest
@ContextConfiguration(classes = {HelloApplication.class})
public class HelloServiceTest {

    @Autowired
    private IHelloService helloService;

    @Test
    public void testToHello() {
        Result<JSONObject> result = helloService.toHello();
        System.out.println(result.toString());
    }

}
