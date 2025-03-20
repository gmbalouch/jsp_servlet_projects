package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAOImpl implements UserDAO {
	private Connection conn;
	
	public UserDAOImpl(Connection conn) {
		super();
		this.conn=conn;
	}
	
	public boolean userRegister(User us) {
		boolean f=false;
		try {
			String sql="insert into user(name,phone_no, password, email) value(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getPhoneNo());
			ps.setString(3, us.getPassword());
			ps.setString(4, us.getEmail());
			
			int i=ps.executeUpdate();
			if(i==1) f=true;
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public User Login(String email, String password) {
		User us=null;
		try {
			String sql="Select * from USER where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setPhoneNo(rs.getString(3));
				us.setPassword(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setLandmark(rs.getString(6));
				us.setCity(rs.getString(7));
				us.setState(rs.getString(8));
				us.setPincode(rs.getString(9));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
		
	}

}
