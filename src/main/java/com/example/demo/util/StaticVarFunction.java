package com.example.demo.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StaticVarFunction {
	
	public static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	public static Date toDate(String date){
        try {
            Date result = dateFormat.parse(date);

            return result;

        } catch (ParseException e) {
            e.printStackTrace();
        }

        return null;
    }
	
}
