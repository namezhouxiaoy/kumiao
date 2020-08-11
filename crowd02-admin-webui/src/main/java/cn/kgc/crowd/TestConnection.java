package cn.kgc.crowd;

import cn.kgc.crowd.entity.Admin;
import cn.kgc.crowd.mapper.AdminMapper;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.sql.DataSource;
import java.sql.SQLException;

public class TestConnection {
    public static void main(String[] args) throws SQLException {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-persister-mybatis.xml");
        AdminMapper bean = ctx.getBean(AdminMapper.class);
//        Admin admin = bean.selectByPrimaryKey(1);
//        System.out.println(admin);
        DataSource dataSource = (DataSource) ctx.getBean("dataSource");
        System.out.println(dataSource.getConnection());

    }
}
