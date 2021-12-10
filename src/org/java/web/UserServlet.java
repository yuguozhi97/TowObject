package org.java.web;

import org.java.dao.ArtUserDao;
import org.java.dao.DaoImpl.UserDaoImpl;
import org.java.util.MailUtils;

import javax.mail.MessagingException;
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


    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String emialyzm = request.getParameter("emialyzm");
        String pwd = request.getParameter("pwd");
        String pwdAgin = request.getParameter("pwdAgin");
        String bx = request.getParameter("cb");


        //判断客户是否勾选了用户协议
        if(name!=null&&!name.equals("")){
            //这就代表用户填了 用户名text文本

        }else {
            //没有填写用户text

        }


        //进入dao层 通过用户名判断 是否已存在此用户
        boolean flag=dao.sense(name);
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if(!flag){
            //可以注册
            out.write("yes");
        }else {
            //不可以注册
            out.write("no");
        }
        System.out.println(flag);

        out.flush();
        out.close();

    }


    protected void yzyx(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, MessagingException {
        //获取邮箱
        String yzm = request.getParameter("yzm");
        //生成随机的验证码
        int code =(int)((Math.random()*9+1)*100000);
        String codee = String.valueOf(code);
        //存之session等下判断是否填写正确
        request.getSession().setAttribute("code",codee);

        //用右键模板 发送邮件
        MailUtils.sendMail(yzm,codee);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.write("yes");
        out.flush();
        out.close();

    }
}
