package xyz.ieden.mybatis.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xyz.ieden.entity.Result;
import xyz.ieden.mybatis.service.ICountryService;

/**
 * @author ThinkPad
 * @date Created by 2018/4/18 9:07
 */
@RestController
@RequestMapping(value = "country")
public class CountryController {

    @Autowired
    private ICountryService countryService;

    @GetMapping(value = "")
    public Result<JSONObject> findCountryByPage(@RequestParam(value = "pageNum") Integer pageNum, @RequestParam(value = "pageSize") Integer pageSize) {
        JSONObject reqParam = new JSONObject();
        reqParam.put("pageNum", pageNum);
        reqParam.put("pageSize", pageSize);
        Result<JSONObject> result = countryService.findCountryByPage(reqParam);
        return result;
    }

}
