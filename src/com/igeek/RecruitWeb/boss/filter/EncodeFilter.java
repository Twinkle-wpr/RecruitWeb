package com.igeek.RecruitWeb.boss.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "f1" , urlPatterns = "/*")
public class EncodeFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //对请求编码集处理
        req.setCharacterEncoding("UTF-8");
        //对响应编码集处理
        resp.setContentType("text/html;charset=UTF-8");
        //将处理好的请求和响应继续通过过滤链传递至下一个资源
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
