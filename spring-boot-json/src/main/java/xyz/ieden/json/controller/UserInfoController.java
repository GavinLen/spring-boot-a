package xyz.ieden.json.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import xyz.ieden.entity.Result;
import xyz.ieden.json.entity.UserInfo;
import xyz.ieden.json.service.IUserInfoService;

import java.util.List;

/**
 * @author ThinkPad
 * @date Created by 2018/4/17 15:01
 */
@RestController
@RequestMapping(value = "user")
public class UserInfoController {

    @Autowired
    private IUserInfoService userInfoService;

    @GetMapping(value = "")
    private Result<List<UserInfo>> findUserInfo() {
        Result<List<UserInfo>> result = userInfoService.findUserInfoAll();
        return result;
    }

}
