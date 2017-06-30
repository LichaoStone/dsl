package cn.com.js_tobacco.mdm.util;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class  SqlUtil {
    private static BeanFactory factory =null;
    private static Map<String,SqlSessionFactory> beanMap=new HashMap<String,SqlSessionFactory>(); 
    public static SqlSessionTemplate getSqlSession(String factoryBeanId){
        if (factory==null) {
            factory=  new ClassPathXmlApplicationContext("classpath:aplicationContext.xml");
        }
        
        if (beanMap.get(factoryBeanId)==null) {
            beanMap.put(factoryBeanId, (SqlSessionFactory)factory.getBean(factoryBeanId));
        }
        return new SqlSessionTemplate((SqlSessionFactory)beanMap.get(factoryBeanId));
     }
    
    public static SqlSessionTemplate getSqlSession() {
        return getSqlSession("sqlSessionFactory");
    }
}