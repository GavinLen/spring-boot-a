package xyz.ieden.json.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.apache.commons.lang3.builder.ToStringBuilder;

import java.io.Serializable;
import java.util.Date;

/**
 * @author ThinkPad
 * @date Created by 2018/4/17 14:49
 */
public class UserInfo implements Serializable {

    private Long id;
    private String username;
    @JSONField(serialize = false)
    private String password;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    private String describe;

    public UserInfo() {
    }

    public UserInfo(Long id, String username, String password, Date createTime) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.createTime = createTime;
    }

    // Setter and Getter Method


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
