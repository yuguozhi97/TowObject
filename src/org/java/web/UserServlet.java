package org.java.web;

import org.java.dao.ArtUserDao;
import org.java.dao.DaoImpl.UserDaoImpl;
import org.java.util.MailUtils;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/user")
public class UserServlet extends BaseServlet{
    private ArtUserDao dao=new UserDaoImpl();


    //登录的方法
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

    //注册的方法
    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String emialyzm = request.getParameter("emialyzm");
        String pwd = request.getParameter("pwd");
        String pwdAgin = request.getParameter("pwdAgin");

        String rollBack="";

        //准备好输出流准备回调输出
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        //取出验证码
        HttpSession session=request.getSession();
        String code = (String) session.getAttribute("code");

        System.out.println(code);



        //因为不是submit提交判断，非空属性不能用，所以要进servlet判断



        out.write(rollBack);
        out.flush();
        out.close();

    }

    //获取验证码-->方法
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

    //name框失去焦点后的事件
    protected void judegName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        boolean flag = dao.sense(name);

        //创建流
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fg="";
        if(flag){
            //已有用户，不让注册
            fg="不行";
        }else {
            //可以注册
            fg="可以";
        }
        out.write(fg);
        out.flush();
        out.close();
    }

    //判断邮箱是否为空，包括格式
    protected void judegMail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //创建输出流
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();


        String mail = request.getParameter("mail");
        System.out.println(mail);
        String rollback="";
        if(mail==null||mail.equals("")){
            rollback="不能为空";
        }else {
            String check = "\\w+\\x40\\w+\\x2e\\w+";

            Pattern regex = Pattern.compile(check);

            Matcher matcher = regex.matcher(mail);

            boolean isMatched = matcher.matches();

            if(!isMatched){
                rollback="错误格式";
            }

        }

        out.write(rollback);
        out.flush();
        out.close();
    }
}
