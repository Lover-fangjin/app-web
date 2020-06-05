package com.ztman.firectrl.filter;

import com.alibaba.fastjson.JSONObject;
import com.ztman.firectrl.utils.JsonResult;
import com.ztman.firectrl.utils.TokenUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2020/4/20.
 */
@WebFilter(filterName = "TokenFilter", urlPatterns = {"/*"}, asyncSupported = true)
public class TokenFilter implements Filter {
    private static final Logger logger = LoggerFactory.getLogger(TokenFilter.class);

    String[] includeUrls = new String[]{"/"};

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;

        String url = request.getRequestURI();
        logger.info("current_url: {}", url);
        boolean needFilter = isNeedFilter(url);

        //静态资源放行
        if(url.endsWith(".js")||url.endsWith(".css")||url.endsWith(".jpg")
                ||url.endsWith(".gif")||url.endsWith(".png")){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        //swagger
        if(url.startsWith("/webjars") || url.startsWith("/v2") || url.startsWith("/swagger-resources")
                || url.startsWith("/csrf")
                || "/swagger-ui.html".equals(url) ){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        //login|upload|register|resetPw
        if(url.contains("/user/login") ||
                url.contains("/user/logout") ||
                url.contains("/upload") ||
                url.contains("/user/register") ||
                url.contains("/user/sms/captcha") ||
                url.contains("/user/verificationCode")){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        if(!needFilter){
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            String token = request.getHeader("Authorization");
            JsonResult jsonResult = new JsonResult();

            //校验token
            boolean tokenValid = false;
            try{
                tokenValid = TokenUtil.verificationToken(token);
            }catch (Exception e){
                logger.error("TokenFilter", "TOKEN验证失败");
            }
            if(tokenValid){
                filterChain.doFilter(servletRequest, servletResponse);
            } else {
                jsonResult.setResultCode(403);
                jsonResult.setResult("身份过期，请重新登录");
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().write(JSONObject.toJSONString(jsonResult));
            }
        }
    }

    @Override
    public void destroy() {

    }

    public boolean isNeedFilter(String uri) {
        for (String includeUrl : includeUrls) {
            if(includeUrl.equals(uri)) {
                return false;
            }
        }
        return true;
    }
}
