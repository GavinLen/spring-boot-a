package xyz.ieden.mybatis.service;

import com.alibaba.fastjson.JSONObject;
import xyz.ieden.entity.Result;
import xyz.ieden.exception.EdenException;

/**
 * @author ThinkPad
 * @date Created by 2018/4/17 10:43
 */
public interface ICountryService {

    /**
     * 通过 page 查询 Country
     *
     * @param reqParam
     * @return
     * @throws EdenException
     */
    Result<JSONObject> findCountryByPage(JSONObject reqParam) throws EdenException;

}
