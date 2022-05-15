package com.learner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


//CRUD-C -creation of data -insert , R -retrival -select, U-update -update, D-delete -delete
public class SubjectDAO {
	
	SubjectPOJO supojo=null;
	public int insertsubject(SubjectPOJO supojo) throws ClassNotFoundException, SQLException {
		Connection con=DbConn.getConn();
		String sql="insert into Subjects values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,supojo.getSubjectID());
		ps.setString(2,supojo.getSubjectName());
		return ps.executeUpdate();
	}
	
	
	public int updatesubject(SubjectPOJO supojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="update Subjects set SubjectName=? where SNo=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,supojo.getSubjectID());
		ps.setString(2,supojo.getSubjectName());
		return ps.executeUpdate();
	}
		
	public int deletesubject(SubjectPOJO supojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="delete from Subjects where SubjectName=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,supojo.getSubjectName());
		return ps.executeUpdate();
		
	}
	public List<SubjectPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConn.getConn();
		List<SubjectPOJO> list=new ArrayList<SubjectPOJO>();
		String sql="select * from Subjects";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			SubjectPOJO supojo=new SubjectPOJO();
			supojo.setSubjectID(rs.getInt(1));
			supojo.setSubjectName(rs.getString(2));
			list.add(supojo);
		}		
		return list;
		
	}

}




