package xyz.ieden.json.service.impl;

import org.springframework.stereotype.Service;
import xyz.ieden.entity.Result;
import xyz.ieden.exception.EdenException;
import xyz.ieden.json.entity.UserInfo;
import xyz.ieden.json.service.IUserInfoService;
import xyz.ieden.util.ResultUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author ThinkPad
 * @date Created by 2018/4/17 14:52
 */
@Service
public class UserInfoServiceImpl implements IUserInfoService {

    @Override
    public Result<List<UserInfo>> findUserInfoAll() throws EdenException {

        Result<List<UserInfo>> result = ResultUtils.createResult();

        List<UserInfo> userInfoList = new ArrayList<>();
        for (long i = 0; i < 5; i++) {
            UserInfo user = new UserInfo(i, "user_" + i, "pass_" + i, new Date());
            userInfoList.add(user);
        }
        result.setData(userInfoList);
        return result;
    }
}
