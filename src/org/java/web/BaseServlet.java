package org.java.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

//这是一个公共的servlet
public class BaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
            //1、获得当前类的字节码对象  是哪个继承对象 就是谁的
            Class clazz=this.getClass();
            //2、获取用户请求的方法名称
            String method = request.getParameter("method");
            //3、获得当前字节码对象的方法
        try {
            Method handler = clazz.getDeclaredMethod(method, HttpServletRequest.class, HttpServletResponse.class);
            //4、忽略修饰符（暴力调用）
            handler.setAccessible(true);
            //5、执行方法
            handler.invoke(this,request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
