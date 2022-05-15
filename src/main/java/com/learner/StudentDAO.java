package com.learner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


//CRUD-C -creation of data -insert , R -retrival -select, U-update -update, D-delete -delete
public class StudentDAO {
	
	StudentPOJO stpojo=null;
	public int insertstudent(StudentPOJO stpojo) throws ClassNotFoundException, SQLException {
		Connection con=DbConn.getConn();
		String sql="insert into Students values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,stpojo.getFirstName());
		ps.setString(2,stpojo.getLastName());
		ps.setString(3,stpojo.getClassname());
		return ps.executeUpdate();
	}
		
	public int updatestudent(StudentPOJO stpojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="update Students set StudentFirstName=?,StudentlastName=? where Classname=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,stpojo.getFirstName());
		ps.setString(2,stpojo.getLastName());
		ps.setString(3,stpojo.getClassname());		
		return ps.executeUpdate();
	}
		
	public int deletestudent(StudentPOJO stpojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="delete from Students where StudentFirstName=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,stpojo.getFirstName());
		return ps.executeUpdate();
		
	}
	
	public List<StudentPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConn.getConn();
		List<StudentPOJO> list=new ArrayList<StudentPOJO>();
		String sql="select * from Students";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			StudentPOJO stpojo= new StudentPOJO();
			stpojo.setFirstName(rs.getString(1));
			stpojo.setLastName(rs.getString(2));
			stpojo.setClassname(rs.getString(3));
			list.add(stpojo);
		}		
		return list;		
	}
                // method created to display class report with student details//
	public List<StudentPOJO> displayreport() throws ClassNotFoundException, SQLException{
		Connection con=DbConn.getConn();
		List<StudentPOJO> list=new ArrayList<StudentPOJO>();
		String sql="select * from Students where Classname=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,stpojo.getClassname());
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			StudentPOJO stpojo= new StudentPOJO();			
			stpojo.setFirstName(rs.getString(1));
			stpojo.setLastName(rs.getString(2));
			stpojo.setClassname(rs.getString(3));
			list.add(stpojo);
		}		
		return list;		
	}
	
}




