package com.Abhinav.dao;
import java.sql.*;
import java.util.ArrayList;

import com.Abhinav.model.Bug;


public class BugDao {
	Connection con;
	PreparedStatement ps;
	public ArrayList<Bug> show() {
		ArrayList<Bug> al=new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/bugrepo","root","qwerty");
            ps = con.prepareStatement("select * from bugs");
            ResultSet rs= ps.executeQuery();
           // ArrayList<Bug> al=new ArrayList<>();
            while(rs.next()) {
            	Bug b=new Bug();
            	b.setId(rs.getInt("id"));
            	b.setBugname(rs.getString("bugname"));
            	b.setBugdetails(rs.getString("bugdetails"));
            	b.setEmployee(rs.getString("employee"));
            	al.add(b);
            } 
        } 
        catch (Exception e) {
            System.out.println(e);
        }
        return al;
        
	}
	public void delete(int id) {
		 try {
	            Class.forName("com.mysql.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost/bugrepo","root","qwerty");
	            ps = con.prepareStatement("delete from bugs where id = ?");
	            ps.setInt(1,id );
	            ps.executeUpdate();
	            
	           
	         } 
	        catch (Exception e) {
	            System.out.println(e);
	        }
		
	}
	public void addbug(int id,String bugname, String bugdetails, String employee) {
		try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/bugrepo","root","qwerty");
            ps = con.prepareStatement("insert into bugs (id,bugname,bugdetails,employee) values (?,?,?,?)");
            ps.setInt(1, id);
            ps.setString(2, bugname);
            ps.setString(3, bugdetails);
            ps.setString(4, employee);
            ps.executeUpdate();
            System.out.println("Successfully added");
           
            } 
        catch (Exception e) {
            System.out.println(e);
        }
	}
	public Bug getbug(int id) {
		
		
	            try{
	            Class.forName("com.mysql.jdbc.Driver");
	            
	            con = DriverManager.getConnection("jdbc:mysql://localhost/bugrepo","root","qwerty");
	            ps = con.prepareStatement("select id,bugname,bugdetails,employee from bugs where id =?");
	            ps.setInt(1, id);
	            ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					int _id=rs.getInt("id");
					String bugname=rs.getString("bugname");
					String bugdetails=rs.getString("bugdetails");
					String employee=rs.getString("employee");
					Bug bug=new Bug(_id,bugname,bugdetails,employee);
					return bug;
				}
	            }
				catch(Exception e) {
					System.out.println(e);
				}
				return null;
	}
	public void updatebug(int id, String bugname, String bugdetails, String employee) {
		try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/bugrepo","root","qwerty");
            ps = con.prepareStatement("update bugs set bugname = ?,bugdetails= ?, employee =? where id = ?");
            ps.setString(1, bugname);
            ps.setString(2, bugdetails);
            ps.setString(3, employee);
            ps.setInt(4, id);
            ps.executeUpdate();
            System.out.println("Successfully updated");
           
            } 
        catch (Exception e) {
            System.out.println(e);
        }
		
	}
}
	
	

