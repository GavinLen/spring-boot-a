package xyz.ieden.interceptor.service;

import xyz.ieden.interceptor.entity.ValidationModel;

/**
 *
 * @author Gavin
 * @date 2018.04.15
 */
public interface IValidationService {

    /**
     * 验证 AccessToken
     *
     * @param accessToken
     * @return
     */
    ValidationModel verifyAccessToken(String accessToken);
}
