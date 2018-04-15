package xyz.ieden.interceptor.service.impl;

import org.springframework.stereotype.Service;
import xyz.ieden.entity.User;
import xyz.ieden.interceptor.service.IUserService;

/**
 * @author Gavin
 * @date 2018.04.15
 */
@Service
public class UserServiceImpl implements IUserService {
    @Override
    public User findUserByUserId(Integer userId) {
        return null;
    }
}
