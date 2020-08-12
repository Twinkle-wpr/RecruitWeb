package com.igeek.RecruitWeb.boss.controler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@WebServlet(name = "BaseServlet")
public class BaseServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //获得用户请求的方法名
        String methodName = request.getParameter("method");
        //获得子类的类类型
        Class<? extends BaseServlet> clazz = this.getClass();

        try {
            //使用反射机制获取将要执行的方法对象
            Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);

            //使用反射机制执行调用对应的方法
            method.invoke(this,request,response);

        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

    }
}
