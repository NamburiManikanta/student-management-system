package com.Student.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.mysql.cj.xdevapi.PreparableStatement;

public class DBConnection {
	
	private DataSource dataSource;

	public DBConnection(DataSource theDataSource) {
		// TODO Auto-generated constructor stub
		this.dataSource = theDataSource;
	}

	public List<SettersGetters> getStudents() {
		// TODO Auto-generated method stub
		List<SettersGetters> Students = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			myConn = dataSource.getConnection();
			
			String s = "Select * from Student";
			
			myStmt = myConn.createStatement();
			myRs = myStmt.executeQuery(s);
			
			while(myRs.next()) {
				int ID = myRs.getInt("id");
				String NAME = myRs.getString("Name");
				String GENDER = myRs.getString("Gender");
				String EMAIL = myRs.getString("Email");
				String PHONE = myRs.getString("Phone");
				
				SettersGetters tempStudent = new SettersGetters(ID, NAME, GENDER, EMAIL, PHONE);
				
				Students.add(tempStudent);
			}
			
			System.out.println(Students);
			return Students;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(myConn,myStmt,myRs);
		}
		
		
		return null;
	}
	
	
	public void addStudent(SettersGetters newStudent) {
		// TODO Auto-generated method stub
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		
		
		
				
				try {
					myConn =dataSource.getConnection();
					
					String S = "insert into student"+
							 "(ID,NAME,GENDER,EMAIL,PHONE)"+
							"values(?,?,?,?,?)";
					
					myStmt=myConn.prepareStatement(S);
					
					myStmt.setInt(1, newStudent.getId());
					myStmt.setString(2, newStudent.getName());
					myStmt.setString(3, newStudent.getGender());
					myStmt.setString(4, newStudent.getEmail());
					myStmt.setString(5, newStudent.getPhone());
					
					myStmt.execute();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					close(myConn,myStmt,null);
				}
		
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		// TODO Auto-generated method stub
		try {
			if(myRs !=null) {
				myRs.close();
			}
			
			if(myStmt !=null) {
				myStmt.close();
			}
			
			if(myConn !=null) {
				myConn.close();
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	
	

}
