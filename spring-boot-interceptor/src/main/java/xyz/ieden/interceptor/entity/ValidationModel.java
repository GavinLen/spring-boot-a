package xyz.ieden.interceptor.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 *
 * @author Gavin
 * @date 2018.04.15
 */
public class ValidationModel {

    private Integer userId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
