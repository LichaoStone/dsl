package com.inspur.webservice.webservicetest;

import java.util.*;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

/**
 * 功能说明：测试通过axis保留web服务
 *
 * @author 郑斌
 * @date 2015年8月29日 下午4:31:49
 */

@Component("webServiceTest")
public class WebServiceTest {

	/**
	 * 功能说明：返回字符串
	 * @author 郑斌
	 * @date 2015年8月29日 下午4:32:26
	 * @param name
	 * @param age
	 * @return
	 */
    public String serviceA(String name, Integer age) {

    	System.out.println("WebServiceTest - serviceA ");
        Map map = new HashMap();
        map.put("name", name);
        map.put("age", age);
        return map.toString();
    }
}