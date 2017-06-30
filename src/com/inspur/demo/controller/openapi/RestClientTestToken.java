package com.inspur.demo.controller.openapi;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

import com.inspur.lambo.framework.sst.ServiceTkEncrypt;

public class RestClientTestToken {

	private static CloseableHttpClient clientAuthorizationed = null;

	public static void main(String[] args) throws Exception {
		
		//组织参数
		Map<String,String> parmsMap = new HashMap<String,String>();
		parmsMap.put("userId", "admin");
		//调用rest服务
		String result = doPost("http://127.0.0.1:8080/lambo/openApi/uc/user/getUserNameById",parmsMap);
		
		System.out.print("result=========="+result);
		
		
		//关闭连接
		try {
			if(clientAuthorizationed!=null){
				clientAuthorizationed.close();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	};

	/**
	 * 通过post方式访问rest服务
	 * 
	 * @author: sun_zhen
	 * @throws Exception 
	 * @date 2015年9月24日 下午4:10:13
	 */
	public static String doPost(String url, Map<String,String> parmsMap) throws Exception {

		//分配的appId和密钥
		String appId = "2204";
		String secretId = "q55@6u";

		String tk = ServiceTkEncrypt.getTkStr(appId, secretId);

		HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();
		// HttpClient
		CloseableHttpClient closeableHttpClient = httpClientBuilder.build();


		HttpPost httpPost = new HttpPost(url);

		List<NameValuePair> formparams = new ArrayList<NameValuePair>();

		formparams.add(new BasicNameValuePair("appId", appId));
		formparams.add(new BasicNameValuePair("tk", tk));
		
		if(parmsMap != null){
			for(Entry<String, String> entry : parmsMap.entrySet()){
				formparams.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
			}
		}
		
		UrlEncodedFormEntity entity;
		JSONObject resultObj = null;
		try {
			entity = new UrlEncodedFormEntity(formparams, "UTF-8");
			httpPost.setEntity(entity);

			HttpResponse httpResponse;
			// post请求
			httpResponse = closeableHttpClient.execute(httpPost);

			// getEntity()
			HttpEntity httpEntity = httpResponse.getEntity();
			if (httpEntity != null) {
				String result = EntityUtils.toString(httpEntity, "UTF-8");
				resultObj = new JSONObject(result);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return resultObj.toString();
	}

	

}
