package com.jsonexample;
import org.json.simple.JSONObject;

import org.json.simple.parser.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
@WebServlet("/Second")
public class jsonfile extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		pw.write("hi");
		JSONObject root = new JSONObject();

		JSONObject ob = new JSONObject();
		ob.put("name", "abar");

		ob.put("age", 21);
		ob.put("salary", 50000);
		JSONObject ob1 = new JSONObject();
		ob1.put("name", "abar");

		ob1.put("age", 21);
		ob1.put("salary", 50000);
		JSONArray arr = new JSONArray();
		arr.add(ob);
		arr.add(ob1);
		root.put("student", arr);
		System.out.println(ob.toJSONString());
		System.out.println(root);
		System.out.println(root.get("student"));
		
		File f=new File("E://new1.json");
		 PrintWriter pwr = new PrintWriter("E://new1.json"); 
         pwr.write(root.toJSONString());         
        
        pwr.close();
        
        JSONObject job=null;
		try {
			job = (JSONObject)new JSONParser().parse(new FileReader("E://new1.json"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        JSONArray array = new JSONArray();
		array = (JSONArray)job.get("student");
        Iterator it1=array.iterator();
		while(it1.hasNext())
		{
			JSONObject json1=(JSONObject)it1.next();
			Iterator<Map.Entry> it2=json1.entrySet().iterator();
			while(it2.hasNext())
			{
				Map.Entry pair=it2.next();
				System.out.println(pair.getKey()+" : "+pair.getValue());
				
			}
			System.out.println();
		}
		
        System.out.println(job);

	}
}
