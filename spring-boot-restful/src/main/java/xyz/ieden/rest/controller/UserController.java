package xyz.ieden.rest.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xyz.ieden.entity.Result;
import xyz.ieden.entity.User;
import xyz.ieden.rest.service.IUserService;

import java.util.List;

/**
 * @author Gavin
 * @date 2018.04.15
 */
@RestController
@RequestMapping(value = "user")
public class UserController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private IUserService userService;

    /**
     * 通过 userId 删除 user
     *
     * @param userId
     * @return
     */
    @DeleteMapping(value = "")
    public Result<Integer> modifyUser(@PathVariable(value = "userId") Integer userId) {
        LOGGER.debug("Modify User.");
        Result<Integer> result = userService.deleteUserByUserId(userId);
        LOGGER.info("Delete User:[{}].", result.getData());
        return result;
    }

    /**
     * 修改 user
     *
     * @param user
     * @return
     */
    @PutMapping(value = "")
    public Result<User> modifyUser(@RequestBody User user) {
        LOGGER.debug("Modify User.");
        Result<User> result = userService.updateUser(user);
        LOGGER.info("New User:[{}].", result.getData().toString());
        return result;
    }

    /**
     * 创建 user
     *
     * @param user
     * @return
     */
    @PostMapping(value = "")
    public Result<Integer> createUser(@RequestBody User user) {
        LOGGER.debug("Create User.");
        Result<Integer> result = userService.saveUser(user);
        LOGGER.info("Create User [{}].", result.getData());
        return result;
    }

    /**
     * 通过 userId 查询 user
     *
     * @param userId
     * @return
     */
    @GetMapping(value = "{userId}")
    public Result<User> findOneUser(@PathVariable(value = "userId") Integer userId) {
        LOGGER.debug("Query User [{}].", userId);
        Result<User> result = userService.findUserByUserId(userId);
        LOGGER.info("Query User [{}]:{}", userId, result.getData().toString());
        return result;
    }

    /**
     * 查询所有 user
     *
     * @return
     */
    @GetMapping(value = "")
    public Result<List<User>> findAllUser() {
        LOGGER.debug("Query User List.");

        Result<List<User>> result = userService.findAllUser();
        LOGGER.info("Query User List Size:[{}]", result.getData().size());
        return result;
    }

}
