package com.Abhinav.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class UserDao {
	Connection con;
	PreparedStatement ps;
	public String[] getuser(String user) {
		String[] credentials=new String[2];
		credentials[0]="";
		credentials[1]="";
		
        try{
        Class.forName("com.mysql.jdbc.Driver");
        
        con = DriverManager.getConnection("jdbc:mysql://localhost/bugrepo","root","qwerty");
        ps = con.prepareStatement("select username,password from users where username=?");
        ps.setString(1, user);
        ResultSet rs=ps.executeQuery();
		if(rs.next()) {			
			credentials[0]=rs.getString("username");
			credentials[1]=rs.getString("password");
			return credentials;
		}
        }
		catch(Exception e) {
			System.out.println(e);
		}
        return credentials;
}
}
