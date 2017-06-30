package com.inspur.demo.controller.openapi;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class ReplaceFile {
	public static void main(String[] args) throws Exception{
		
		
		File dataDir = new File("E:/admin_1");
	    //存放目录及其子目录下的所有文件对象
	    List<File> myfile = new ArrayList<File>();
	    //开始遍历
	    listDirectory(dataDir, myfile);
	    /**
	     * 验证文件是否以jsp结尾，只处理jsp结尾的文件
	     */
	    Pattern p = Pattern.compile("^.*(.html)$");
	    System.out.println("目录下包含 " + myfile.size() + "个文件：");
	    
	    for(File file : myfile){
	    	String filePath = file.getAbsolutePath();
	    	String fileReadPath = (file.getAbsolutePath()).replaceAll("\\\\","/"); //路径转换吧 \符号，转换成 /符号
	    	System.out.println(fileReadPath); 
	    	
	    	FileInputStream fin = new FileInputStream(fileReadPath);
	    	FileOutputStream fout = new FileOutputStream(fileReadPath+".bak");
	    	
	    	int len = fin.read();
	    	while(len != -1){
	    		fout.write(len);
	    		len = fin.read();
	    	}
	    	
	    	fout.close();
	    	fin.close();
	    	Matcher m = p.matcher(fileReadPath);
	    	if(m.matches()){
	    		readFile(fileReadPath+".bak",fileReadPath+".htm");
	    	}
	    	/**
	    	 * 删除中间文件
	    	 */
	    	File deleteFile = new File(fileReadPath+".bak");
	    	deleteFile.delete();
	    }
	    
	    System.out.println("OK");
	}
	/**
	 * 按行读取文件
	 * 符合条件的行记性字符串替换处理
	 */
	public static void readFile(String readFile,String writeFile) throws Exception {
	  FileInputStream fis=new FileInputStream(readFile);
	  InputStreamReader isr=new InputStreamReader(fis, "UTF-8");
	  BufferedReader br = new BufferedReader(isr);
	  
	  FileOutputStream fos=new FileOutputStream(new File(writeFile));
	  OutputStreamWriter osw=new OutputStreamWriter(fos, "UTF-8");
	  BufferedWriter bw=new BufferedWriter(osw);
	  	  
	  
	  //注意关闭的先后顺序，先打开的后关闭，后打开的先关闭
	  String line="";
	  
	  boolean writeFlag = true;

	  bw.write("<%@ page pageEncoding=\"utf-8\" contentType=\"text/html; charset=utf-8\"%>");
	  bw.write("\r\n");
	  while ((line=br.readLine())!=null) {
		  
		String lineStr = line.trim();
		
		//-------------------------------------
		  
		if(lineStr.startsWith("Template Name: Metronic")){
			writeFlag = false;
		}

		
		if(lineStr.startsWith("License: You must have a valid")){
			writeFlag = true;
			line = "注释";
		}
		
		//-------------------------------------
		  
		if(lineStr.startsWith("<!--[if IE 8]> <html lang=\"en\" class=\"ie8 no-js\"> <![endif]-->")){
			writeFlag = false;
		}

		
		if(lineStr.startsWith("<!--<![endif]-->")){
			writeFlag = true;
			line = "";
		}
		
		//-------------------------------------
		
		if(lineStr.startsWith("<meta charset=\"utf-8\" />")){
			writeFlag = false;
		}

		if(lineStr.startsWith("<!-- BEGIN PAGE LEVEL PLUGINS -->")){
			writeFlag = true;
		}
		
		//-------------------------------------
		
		if(lineStr.startsWith("<!-- BEGIN THEME GLOBAL STYLES -->")){
			writeFlag = false;
		}

		if(lineStr.startsWith("<link rel=\"shortcut icon\" href=\"favicon.ico\" /> </head>")){
			writeFlag = true;
			line = line.replace("    <link rel=\"shortcut icon\" href=\"favicon.ico\" /> ", "");
		}
		
		//-------------------------------------
		
		if(lineStr.startsWith("<body class=\"page-header-fixed page-sidebar-closed-hide-logo page-content-white\">")){
			writeFlag = false;
		}

		if(lineStr.startsWith("<!-- BEGIN CONTENT BODY -->")){
			writeFlag = true;
		}
		
		
		//-------------------------------------
		
		if(lineStr.startsWith("<div class=\"page-content\">")){
			writeFlag = false;
		}

		if(lineStr.startsWith("<!-- BEGIN PAGE TITLE-->")){
			writeFlag = true;
		}
		
		//-------------------------------------
		
		if(lineStr.startsWith("<!-- END CONTENT BODY -->")){
			bw.write(line);
		  	bw.write("\r\n");
			writeFlag = false;
		}

		if(lineStr.startsWith("<!-- BEGIN PAGE LEVEL PLUGINS -->")){
			writeFlag = true;
		}
		
		//-------------------------------------
		
		if(lineStr.startsWith("<!-- BEGIN THEME GLOBAL SCRIPTS -->")){
			writeFlag = false;
		}

		if(lineStr.startsWith("<!-- BEGIN PAGE LEVEL SCRIPTS -->")){
			writeFlag = true;
		}
		
		//-------------------------------------
		
		if(lineStr.startsWith("<!-- BEGIN THEME LAYOUT SCRIPTS -->")){
			writeFlag = false;
		}

		if(lineStr.startsWith("</html>")){
			writeFlag = true;
		}
		
		//-------------------------------------
		
		if(writeFlag && line.equals("                </div>")){
			line = line.replace("                </div>", "");
		}
		
		if(writeFlag){
	  		bw.write(line);
		  	bw.write("\r\n");
	  	}
	  	
	  	
	  }
	  
	  bw.close();
	  osw.close();
	  fos.close();
	  
	  br.close();
	  isr.close();
	  fis.close();
	}
	
  /**
   * 遍历目录及其子目录下的所有文件并保存
   * @param path 目录全路径
   * @param myfile 列表：保存文件对象
   */
  public static void listDirectory(File path, List<File> myfile){
    if (!path.exists()){
      System.out.println("文件名称不存在!");
    }else{
      if (path.isFile()){
        myfile.add(path);
      } else{
        File[] files = path.listFiles();
        for (int i = 0; i < files.length; i++ ){
        	listDirectory(files[i], myfile);
        }
      }
    }
  } 
}