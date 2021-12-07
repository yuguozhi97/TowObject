package org.java.web;

import org.java.dao.ArtUserDao;
import org.java.dao.DaoImpl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/user")
public class UserServlet extends BaseServlet{
    private ArtUserDao dao=new UserDaoImpl();

    protected void sign(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");


        //进入dao层判断
        boolean flag=dao.sign(name,pwd);

        //创建输出流返回结果
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if(flag){
            //true 有此用户
            request.getSession().setAttribute("userName",name);
            out.write("yes");
        }else {
            out.write("no");
        }
        //关闭流
        out.flush();
        out.close();
    }
}
