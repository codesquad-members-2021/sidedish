package com.codesquad.sidedish.global.config;

import com.codesquad.sidedish.global.exception.InvalidJwtTokenException;
import com.codesquad.sidedish.global.exception.NoJwtTokenException;
import com.codesquad.sidedish.util.JwtUtil;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String authorizationValue = request.getHeader("Authorization");
        if (authorizationValue == null || authorizationValue.isEmpty()) {
            throw new NoJwtTokenException(NoJwtTokenException.NO_TOKEN_IN_REQUEST_HEADER);
        }
        String[] splitedString = authorizationValue.split(" ");
        if (splitedString.length != 2) {
            throw new InvalidJwtTokenException(InvalidJwtTokenException.BAD_TOKEN);
        }
        String jwtToken = splitedString[1];

        JwtUtil.validateToken(jwtToken);
        return HandlerInterceptor.super.preHandle(request, response, handler);
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}
