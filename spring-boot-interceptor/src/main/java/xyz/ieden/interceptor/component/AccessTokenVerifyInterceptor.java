package xyz.ieden.interceptor.component;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import xyz.ieden.entity.User;
import xyz.ieden.interceptor.entity.ValidationModel;
import xyz.ieden.interceptor.service.IUserService;
import xyz.ieden.interceptor.service.IValidationService;
import xyz.ieden.util.CommonConst;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Gavin
 * @date 2018.04.15
 */
@Component
public class AccessTokenVerifyInterceptor extends HandlerInterceptorAdapter {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccessTokenVerifyInterceptor.class);

    @Autowired
    private IValidationService validationService;
    @Autowired
    private IUserService userService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        LOGGER.info("AccessToken executing.");
        boolean flag = false;
        String accessToken = request.getParameter("token");
        if (StringUtils.isNoneBlank(accessToken)) {
            // 验证
            ValidationModel model = validationService.verifyAccessToken(accessToken);
            // 时间过期

            // 用户验证
            if (model != null) {
                Integer userId = model.getUserId();
                User user = userService.findUserByUserId(userId);
                if (user != null) {
                    request.setAttribute(CommonConst.PARAM_USER, user);
                    LOGGER.info("AccessToken Success, UserName:[{}].", user.getUserName());
                    flag = true;
                }
            }
        }

        if (!flag) {
            response.setStatus(HttpStatus.FORBIDDEN.value());
            response.getWriter().print("AccessToken ERROR");
        }
        return flag;
    }
}
