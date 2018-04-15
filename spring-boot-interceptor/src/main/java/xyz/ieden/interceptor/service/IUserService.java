package xyz.ieden.interceptor.service;

import xyz.ieden.entity.User;

/**
 * @author Gavin
 * @date 2018.04.15
 */
public interface IUserService {

    /**
     * 通过 userId 获取 User
     *
     * @param userId
     * @return
     */
    User findUserByUserId(Integer userId);
}
