package com.learner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


//CRUD-C -creation of data -insert , R -retrival -select, U-update -update, D-delete -delete
public class TeacherDAO {
	
	TeacherPOJO tpojo=null;
	public int insertteacher(TeacherPOJO tpojo) throws ClassNotFoundException, SQLException {
		Connection con=DbConn.getConn();
		String sql="insert into Teacher values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,tpojo.getTeacherFName());
		ps.setString(2,tpojo.getTeacherLName());
		ps.setString(3,tpojo.getDesignation());
		return ps.executeUpdate();
	}
	
	
	public int updateteacher(TeacherPOJO tpojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="update Teacher set TeacherFirstName=?,TeacherlastName=?,Designation=? where TeacherFirstName=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,tpojo.getTeacherFName());
		ps.setString(2,tpojo.getTeacherLName());
		ps.setString(3,tpojo.getDesignation());
		ps.setString(4,tpojo.getTeacherFName());
		return ps.executeUpdate();
	}
		
	public int deleteteacher(TeacherPOJO tpojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="delete from Teacher where TeacherFirstName=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,tpojo.getTeacherFName());
		return ps.executeUpdate();
		
	}
	
	public List<TeacherPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConn.getConn();
		List<TeacherPOJO> list=new ArrayList<TeacherPOJO>();
		String sql="select * from Teacher";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {			
			TeacherPOJO tpojo=new TeacherPOJO();
			tpojo.setTeacherFName(rs.getString(1));
			tpojo.setTeacherLName(rs.getString(2));
			tpojo.setDesignation(rs.getString(3));
		    list.add(tpojo);
		}		
		return list;
		
	}

}




