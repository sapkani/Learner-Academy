package com.learner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//CRUD-C -creation of data -insert , R -retrival -select, U-update -update, D-delete -delete
     public class SubjectTeacherDAO {
	
    	SubjectTeacherPOJO subtpojo=null;
		public int insertSubTeacher(SubjectTeacherPOJO subtpojo) throws ClassNotFoundException, SQLException {
			Connection con=DbConn.getConn();
			String sql="INSERT INTO SubjectTeacher values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,subtpojo.getClassName());
			ps.setString(2,subtpojo.getSubject());
			ps.setString(3,subtpojo.getTeacher());
			return ps.executeUpdate();
		}
		
				
		public int deleteSubTeacher(SubjectTeacherPOJO subtpojo) throws SQLException, ClassNotFoundException {
			Connection con=DbConn.getConn();
			String sql="delete from SubjectTeacher where Subject=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,subtpojo.getSubject());
			return ps.executeUpdate();
			
		}
		
		public List<SubjectTeacherPOJO> display() throws ClassNotFoundException, SQLException{
			Connection con=DbConn.getConn();
			List<SubjectTeacherPOJO> list=new ArrayList<SubjectTeacherPOJO>();
			String sql="select * from SubjectTeacher";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SubjectTeacherPOJO subtpojo=new SubjectTeacherPOJO();
				subtpojo.setClassName((rs.getString(1)));
				subtpojo.setSubject((rs.getString(2)));
				subtpojo.setTeacher((rs.getString(3)));
				list.add(subtpojo);
			}		
			return list;
			
		}
		     // method created to display class report with subject and Teacher details//
		public List<SubjectTeacherPOJO> displaysubteacher() throws ClassNotFoundException, SQLException{
			Connection con=DbConn.getConn();
			List<SubjectTeacherPOJO> list=new ArrayList<SubjectTeacherPOJO>();
			String sql="select * from SubjectTeacher where class=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,pojo.getClassName());
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SubjectTeacherPOJO pojo=new SubjectTeacherPOJO();
				pojo.setClassName((rs.getString(1)));
				pojo.setSubject((rs.getString(2)));
				pojo.setTeacher((rs.getString(3)));
				list.add(pojo);
			}		
			return list;
			
		}
}
