package org.java.dao.DaoImpl;

import org.java.dao.ArtUserDao;
import org.java.util.JDBCUtil;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDaoImpl implements ArtUserDao {
    private JdbcTemplate jdbcTemplate=new JdbcTemplate(JDBCUtil.getDataSource());

    //登录  查询数据库是否有此用户
    @Override
    public boolean sign(String name,String pwd) {
        String sql="select count(*) from user where UserName=? and UserPwd=?";
        int row=jdbcTemplate.queryForObject(sql,Integer.class,name,pwd);
        return row>0;
    }

    @Override
    public boolean sense(String name) {
        String sql="select count(*) from user where UserName=?";
        int row=jdbcTemplate.queryForObject(sql,Integer.class,name);
        return row>0;
    }
}
