package net.kyc.spring.generator.candidate;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


public class CandidatePageGenerator{
	public static void main(String args[]){
		try {
			Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/kyc?useUnicode=true", "root", "root");
			Statement stmt = (Statement) conn.createStatement();
	        ResultSet rs = stmt.executeQuery("select CandidateID from Candidate");
	        List<String> candidateIDList = new ArrayList<String>();
	        while(rs.next()){
	        	candidateIDList.add(rs.getString("CandidateID"));
	    	}
	        for(String candidateID: candidateIDList){
	        	ResultSet rsCandidate = stmt.executeQuery("select * from Candidate where CandidateID="+candidateID);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void createJSP(ResultSet rsCandidate){
		
	}
}