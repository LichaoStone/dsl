package com.inspur.webservice.webserviceClientTest;

import java.util.*;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;


/**
 * 功能说明：httpClient使用简单示例
 *
 * @author 郑斌
 * @date 2015年8月31日 下午3:35:11
 */
public class HttpClientTest {
	
	public static void main(String[] args){
		doPost();
	}
	
    
    /**
     * 功能说明：发送post请求示例
     * @author 郑斌
     * @date 2015年8月31日 下午3:22:23
     */
    public static void doPost() {
        //创建HttpClientBuilder
        HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();
        //HttpClient
        CloseableHttpClient closeableHttpClient = httpClientBuilder.build();

        //HttpPost httpPost = new HttpPost("http://10.110.1.68:9081/lambo/services/testService2/serviceA");
        HttpPost httpPost = new HttpPost("http://127.0.0.1:8080/dsl/services/testService2/serviceA");

        //        httpPost.setConfig(DEFAULT);
        // 创建参数队列
        List<NameValuePair> formparams = new ArrayList<NameValuePair>();
        formparams.add(new BasicNameValuePair("name", "小明"));
        formparams.add(new BasicNameValuePair("age", "16"));

        UrlEncodedFormEntity entity;
        try {
            entity = new UrlEncodedFormEntity(formparams, "UTF-8");
            httpPost.setEntity(entity);

            HttpResponse httpResponse;
            //post请求
            httpResponse = closeableHttpClient.execute(httpPost);

            //getEntity()
            HttpEntity httpEntity = httpResponse.getEntity();
            if (httpEntity != null) {
                //打印响应内容
            	String resultString=EntityUtils.toString(httpEntity, "UTF-8");
                System.out.println("resultString:" +resultString);
            }
            //释放资源
            closeableHttpClient.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}