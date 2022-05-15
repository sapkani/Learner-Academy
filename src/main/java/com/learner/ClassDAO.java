package com.learner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


//CRUD-C -creation of data -insert , R -retrival -select, U-update -update, D-delete -delete
public class ClassDAO {
	
	ClassPOJO pojo=null;
	public int insertclass(ClassPOJO pojo) throws ClassNotFoundException, SQLException {
		Connection con=DbConn.getConn();
		String sql="insert into Class values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,pojo.getClassId());
		ps.setString(2,pojo.getClassname());
		return ps.executeUpdate();
	}
	
	
	public int updateclass(ClassPOJO pojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="update Class set classname=? where classid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,pojo.getClassname());
		ps.setInt(2,pojo.getClassId());
		return ps.executeUpdate();
	}
		
	public int deleteclass(ClassPOJO pojo) throws SQLException, ClassNotFoundException {
		Connection con=DbConn.getConn();
		String sql="delete from Class where classid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,pojo.getClassId());
		return ps.executeUpdate();
		
	}
	
	public List<ClassPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConn.getConn();
		List<ClassPOJO> list=new ArrayList<ClassPOJO>();
		String sql="select * from Class";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			ClassPOJO pojo=new ClassPOJO();
			pojo.setClassId(rs.getInt(1));
			pojo.setClassname(rs.getString(2));
			list.add(pojo);
		}		
		return list;
		
	}

}




