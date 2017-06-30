package com.inspur.sync;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;

public class LdapDemo {
	
	DirContext ctx = null;
	
	public LdapDemo() {
		init();
	}
	
	/**
	 * init ldap config
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public boolean init() {
		boolean flag = false;
		Hashtable env = new Hashtable();
		env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
		env.put(Context.PROVIDER_URL, "ldap://10.142.9.1:389");
		env.put(Context.SECURITY_AUTHENTICATION, "simple");
		env.put(Context.SECURITY_PRINCIPAL, "uid=super,ou=People,o=kunmingtobacco,o=com");
		env.put(Context.SECURITY_CREDENTIALS, "smart123");
		env.put("com.sun.jndi.ldap.connect.pool", "true");
		try {
			ctx = new InitialDirContext(env);
			flag = true;
//			System.out.println("authentication success");
		} catch (javax.naming.AuthenticationException e) {
			System.out.println("failed1 " + e);
		} catch (NamingException e) {
			System.out.println("failed2 " + e);
		}
		return flag;
	}
	
	/**
	 * search
	 */
	public NamingEnumeration<SearchResult> search(String basedn, String s) {
            //设置返回的属性，可以使用*来返回大部份的属性值，但如  nsaccountlock/passwordpolicysubentry/passwordexpirationtime/modifytimestamp/modifiersnamek这些特殊属性需要明确写出来才会返回
		String[] attrs = { "*", "ds-pwp-account-disabled"};
		NamingEnumeration<SearchResult> en = null;
		try {
			SearchControls constraints = new SearchControls();
			constraints.setSearchScope(SearchControls.SUBTREE_SCOPE);
			constraints.setReturningAttributes(attrs);
			en = ctx.search(basedn, s, constraints);
		} catch (Exception e) {
			System.out.println("Exception in search():" + e);
		}
		return en;
	}
	
	public String getObjectsByFilter(String basedn, String filter) throws NamingException {
		
		NamingEnumeration<SearchResult> ne = search(basedn, filter);
		String dn = null;
		while(ne.hasMoreElements()) {
		    SearchResult sr = ne.nextElement();
            Attributes attributes = sr.getAttributes();
            Attribute attribute = attributes.get("mobile");
            Object object = attribute.get(0);
            System.out.println(object.toString());
            System.out.println(attributes);
            dn = sr.getNameInNamespace();
            System.out.println(dn);
		}
		return dn;
	}
	
	public List getUserInfoList(String basedn, String filter) {
        
	    List dataList = new ArrayList();
        NamingEnumeration<SearchResult> ne = search(basedn, filter);
        String dn = null;
        while(ne.hasMoreElements()) {
            Map dataMap = new HashMap();
            SearchResult sr = ne.nextElement();
            Attributes attributes = sr.getAttributes();
            String attrValue = getAttributeValue(attributes, "uid");
            dataMap.put("USER_ID", attrValue);
            attrValue = getAttributeValue(attributes, "cn");
            dataMap.put("USER_NAME", attrValue);
            attrValue = getAttributeValue(attributes, "departmentNumber");
            dataMap.put("DPT_ID", attrValue);
            attrValue = getAttributeValue(attributes, "departmentName");
            dataMap.put("DPT_NAME", attrValue);
            attrValue = getAttributeValue(attributes, "mobile");
            dataMap.put("MOBILE_TEL", attrValue);
            attrValue = getAttributeValue(attributes, "smart-idcardnumber");
            dataMap.put("ID_CARD", attrValue);
            attrValue = getAttributeValue(attributes, "ds-pwp-account-disabled");
            dataMap.put("ACCOUNT_DISABLED", attrValue);
            dataList.add(dataMap);
        }
        return dataList;
    }
	
	private String getAttributeValue(Attributes attributes, String key){
	    Object object = null;
	    String retValue = "";
	    Attribute attribute = attributes.get(key);
	    try {
	        if (attribute != null) {
	            object = attribute.get(0);
	        }
	    } catch (NamingException e) {
	        e.printStackTrace();
	    }
	    
	    if (object != null) {
	        retValue = object.toString();
	    }

	    return retValue;
	}
	
     //测试主方法
	public static void main(String[] args) {
	    
	    String format = "yyyyMMddHHmmssZ";
	    SimpleDateFormat sFormat = new SimpleDateFormat(format);
	    Date date = new Date();
	    System.out.println(date);
	    String format2 = sFormat.format(date);
	    System.out.println(format2);
	    
	    
	    
	    
//		LdapDemo ldapDemo = new LdapDemo();
//		//查询用户，加“*”模糊查询
//		String filter = "(&(|(modifyTimestamp>=20160818012841Z)(createTimestamp>=20160818034354Z))(smart-authority=Auth_YX))";
//		String basedn = "ou=People,o=kunmingtobacco,o=com";
//	    List dataList = ldapDemo.getUserInfoList(basedn, filter);
//		System.out.println(dataList);
	}
}



