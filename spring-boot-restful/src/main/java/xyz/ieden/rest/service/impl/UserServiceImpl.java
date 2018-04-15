package xyz.ieden.rest.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import xyz.ieden.entity.Result;
import xyz.ieden.entity.User;
import xyz.ieden.rest.service.IUserService;
import xyz.ieden.util.ResultUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Gavin
 * @date 2018.04.15
 */
@Service
public class UserServiceImpl implements IUserService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

    @Override
    public Result<Integer> deleteUserByUserId(Integer userId) {
        LOGGER.info("Delete User By UserId [{}].", userId);
        Result<Integer> result = ResultUtils.createResult();
        result.setData(userId);
        return result;
    }

    @Override
    public Result<User> updateUser(User user) {
        LOGGER.info("Update User.");
        Result<User> result = ResultUtils.createResult();

        user.setUserName("abc");
        user.setPassword("2312");
        user.setCreateTime(new Date());
        LOGGER.info("New User:[{}].", user.toString());
        result.setData(user);

        return result;
    }

    @Override
    public Result<Integer> saveUser(User user) {
        LOGGER.info("Save User.");
        Result<Integer> result = ResultUtils.createResult();

        Integer userId = 123;
        user.setUserId(userId);
        LOGGER.info("Save User:[{}].", user.toString());
        result.setData(userId);
        return result;
    }

    @Override
    public Result<User> findUserByUserId(Integer userId) {
        LOGGER.info("Find User By UserId [{}].", userId);
        Result<User> result = ResultUtils.createResult();
        User user = new User(userId, "user_" + userId, "pwd_" + userId, new Date());
        LOGGER.info("Find User:[{}].", user.toString());
        result.setData(user);
        return result;
    }

    @Override
    public Result<List<User>> findAllUser() {
        LOGGER.info("Find All User.");
        Result<List<User>> result = ResultUtils.createResult();
        ArrayList<User> userList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            User user = new User(i, "user_" + i, "pwd_" + i, new Date());
            userList.add(user);
        }
        LOGGER.info("Find All User Size:[{}].", userList.size());
        result.setData(userList);
        return result;
    }
}
