package com.jsonexample;

import org.json.simple.JSONObject;

import java.util.Iterator;
import java.util.Map;
import org.json.simple.JSONArray;

public class json1 {
	public static void main(String args[]) {

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
		JSONArray array = new JSONArray();
		array = (JSONArray) root.get("student");
		/*
		 * for(int i=0;i<array.size();i++) {
		 * 
		 * JSONObject temp=(JSONObject)array.get(i);
		 * System.out.println((String)temp.get("name")+"\n"+temp.get("age")+"\n"+temp.
		 * get("salary"));
		 * 
		 * JSONObject temp=(JSONObject)array.get(i); Iterator<Map.Entry>
		 * it1=temp.entrySet().iterator(); while(it1.hasNext()) { Map.Entry
		 * pair=it1.next(); System.out.println(pair.getKey()+" : "+pair.getValue()); }
		 * System.out.println();
		 * 
		 * }
		 */
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
		

	}
}