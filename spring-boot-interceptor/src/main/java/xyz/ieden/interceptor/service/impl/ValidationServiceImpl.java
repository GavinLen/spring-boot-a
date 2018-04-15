package xyz.ieden.interceptor.service.impl;

import org.springframework.stereotype.Service;
import xyz.ieden.interceptor.entity.ValidationModel;
import xyz.ieden.interceptor.service.IValidationService;

/**
 * @author Gavin
 * @date 2018.04.15
 */
@Service
public class ValidationServiceImpl implements IValidationService {
    @Override
    public ValidationModel verifyAccessToken(String accessToken) {
        return null;
    }
}
