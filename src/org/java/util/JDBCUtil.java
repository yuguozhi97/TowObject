package org.java.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.util.Properties;

public class JDBCUtil {
    private static DataSource ds;

    static {
        try {
            //加载属性文件                   这是类加载器（只能加载这个包里的）   获得源流
            InputStream in=JDBCUtil.class.getClassLoader().getResourceAsStream("druid.properties");
            //创建属性类加载输入流的数据
            Properties prop=new Properties();
            prop.load(in);

            //产生数据
            ds= DruidDataSourceFactory.createDataSource(prop);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    //静态方法直接获取数据源
    public static DataSource getDataSource(){
        return ds;
    }
}
