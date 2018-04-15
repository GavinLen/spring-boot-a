package xyz.ieden.util;

import xyz.ieden.entity.Result;

import java.util.Objects;

/**
 *
 * @author Gavin
 * @date 2018.04.14
 */
public class ResultUtils {

    public static <T> Boolean isSuccess(Result<T> result) {
        return Objects.equals(ResultConstant.RET_SUCCESS_CODE, result.getCode());
    }

    public static <T> Result<T> createErrorResult() {
        Result<T> result = new Result<>(ResultConstant.RET_UNKNOWN_ERROR_CODE, ResultConstant.RET_UNKNOWN_ERROR_MSG);
        return result;
    }

    public static <T> Result<T> createResult(String code, String msg) {
        Result<T> result = new Result<>(code, msg);
        return result;
    }

    public static <T> Result<T> createResult() {
        Result<T> result = new Result<>(ResultConstant.RET_SUCCESS_CODE, ResultConstant.RET_SUCCESS_MSG);
        return result;
    }

}
