package xyz.ieden.rest.service;

import xyz.ieden.entity.Result;
import xyz.ieden.entity.User;

import java.util.List;

/**
 * @author Gavin
 * @date 2018.04.15
 */
public interface IUserService {

    /**
     * 通过 userId 删除 user
     *
     * @param userId
     * @return
     */
    Result<Integer> deleteUserByUserId(Integer userId);

    /**
     * 更新 user
     *
     * @param user
     * @return
     */
    Result<User> updateUser(User user);

    /**
     * 创建 user
     *
     * @param user
     * @return
     */
    Result<Integer> saveUser(User user);

    /**
     * 通过 userId 查询 user
     *
     * @param userId
     * @return
     */
    Result<User> findUserByUserId(Integer userId);

    /**
     * 查询所有的用户
     *
     * @return
     */
    Result<List<User>> findAllUser();

}
