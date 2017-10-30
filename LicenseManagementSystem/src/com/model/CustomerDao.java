package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

public class CustomerDao {
	static Connection con ;
	
	static{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver loaded");
			
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
			System.out.println("Connected sucessfully");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Exception in Driver loading");
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Exception in connection");
			e.printStackTrace();
		}
	
	}
		
	
	public static String insertCust(customer beans) {
		try{
			
			Date date = new Date();
			Calendar gcalendar = new GregorianCalendar();
			SimpleDateFormat sdf = new SimpleDateFormat("dd MM yyyy");
			
			String idate = sdf.format(gcalendar.getTime());
			beans.setIdate(idate);
			System.out.println("date : " +date.toString());
			
			
		 	 
		//EmployeeBean beans = new EmployeeBean();
		PreparedStatement pst = con.prepareStatement("insert into customerDetails values(?,?,?,?,?,?,?,?,?,?,?)");
		
		pst.setInt(1, beans.getL_no());
		pst.setString(2, beans.getName());
		pst.setString(3, beans.getAddress());
		pst.setString(4, beans.getMob());
		pst.setString(5, beans.getDob());
		pst.setString(6, beans.getBg());
		pst.setString(7, beans.getPlace());
		pst.setString(8, beans.getFnmae());
		pst.setString(9, beans.getIdate());
		pst.setString(10, beans.getEdate());
		pst.setString(11, beans.getL_type() );
		
		
		int cnt = pst.executeUpdate();
		if(cnt == 1){
			System.out.println("Inserted Sucessfully");
			return "Sucess";
		}
		else
		{
			System.out.println("NOT Inserted Sucessfully");
			return "Not Sucess";
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return null;
		
	}


	public static String editCust(int lno) {
		// TODO Auto-generated method stub
		return null;
	}


	public static List<customer> getIdValue(int lno) {
		
		
		customer beans=new customer();
		List<customer> l = new ArrayList<customer>();
		beans.setL_no(lno);
		try {
			Statement st=con.createStatement();
			ResultSet rs = 
			        st.executeQuery("select * from customerDetails where licensee_no = '" + lno + "'") ;
			 while(rs.next()){
				
				 beans.setName(rs.getString(2));
				beans.setAddress(rs.getString(3));
				beans.setMob(rs.getString(4));
				l.add(beans);
				
			 }
			 
			 return l;
		} catch (SQLException e) {
			System.out.println("Exception in fetching add and mob");
			e.printStackTrace();
		}
		return null;
		
	}


	public static List<customer> viewIdValue(int lno) {
		try {
			customer beans=new customer();
			List<customer> l = new ArrayList<customer>();
			///Statement st = null;
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from customerDetails where licensee_no = '" + lno + "'") ;
			 while(rs.next()){
				 
					beans.setL_no(rs.getInt(1));
					beans.setName(rs.getString(2));
					beans.setAddress(rs.getString(3));
					beans.setMob(rs.getString(4));
					beans.setDob(rs.getString(5));
					beans.setBg(rs.getString(6));
					beans.setPlace(rs.getString(7));
					beans.setFnmae(rs.getString(8));
					beans.setIdate(rs.getString(9));
					beans.setEdate(rs.getString(10));
					beans.setL_type(rs.getString(11));
					l.add(beans);
					
					
					
					return l;	
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}


	public static void renewIdValue(int lno) {
		
		
	}


	public static int lastId() {
		
		int lno = 10001;
		try {
		Statement st = con.createStatement();
		ResultSet rs;
		
			rs = st.executeQuery("select licensee_no from customerDetails");
		
		 if(!rs.next()) 
	 	   {
	 		  lno= 10001;
	 	   }  
		
		while(rs.next()) {
	 		  lno= rs.getInt(1); 
	 	   }
	 	  // lno ++;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return lno;
	}


	public static String editAddress(int lno, String address, String mob) {
		
		try {
			Statement st = con.createStatement();
		
			String query = "UPDATE customerDetails SET cust_contact ='" +mob+ "', cust_address ='" +address+ "'  where licensee_no ="+lno;
			st.executeUpdate(query);
			return "updated";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


	public static String renew(int lno, String newExDate) {
		try {
		Statement st = con.createStatement();
		
		System.out.println("new date "+ newExDate);
		String query = "UPDATE customerDetails SET licensee_edate ='" +newExDate+ "' where licensee_no ="+lno;
		st.executeUpdate(query);
		return "sucess";
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	}
}
