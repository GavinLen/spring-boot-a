package xyz.ieden.json.service;

import xyz.ieden.entity.Result;
import xyz.ieden.exception.EdenException;
import xyz.ieden.json.entity.UserInfo;

import java.util.List;

/**
 * @author ThinkPad
 * @date Created by 2018/4/17 14:51
 */
public interface IUserInfoService {

    Result<List<UserInfo>> findUserInfoAll() throws EdenException;

}
