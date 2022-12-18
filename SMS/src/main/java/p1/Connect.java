package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Connect {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;

	public Connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "");
			System.out.println("Connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean saveRecord(int roll, String name, String city, int marks) {
		boolean b = false;
		String sql = "INSERT INTO tblstudent(roll,name,city,marks)VALUES(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, roll);
			ps.setString(2, name);
			ps.setString(3, city);
			ps.setInt(4, marks);
			int n = ps.executeUpdate();
			if (n > 0)
				b = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public ArrayList<show> getRecords() {
		ArrayList<show> arr = new ArrayList<show>();
		show s1;
		String sql = "SELECT * FROM tblstudent";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				s1 = new show();
				s1.setRoll(rs.getInt(1));
				s1.setName(rs.getString(2));
				s1.setCity(rs.getString(3));
				s1.setMarks(rs.getInt(4));
				arr.add(s1);
			}
		} catch (SQLException e) {
		}
		return arr;
	}

	public show getRecordByRoll(int roll) {
		show s1 = null;
		String sql = "SELECT * FROM tblstudent WHERE roll=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, roll);
			rs = ps.executeQuery();
			if (rs.next()) {
				s1 = new show();
				s1.setRoll(rs.getInt(1));
				s1.setName(rs.getString(2));
				s1.setCity(rs.getString(3));
				s1.setMarks(rs.getInt(4));
			}
		} catch (SQLException e) {
		}
		return s1;
	}

	public void deleteRecord(int roll) {
		String sql = "DELETE FROM tblstudent where roll=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, roll);
			int n = ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public void updateRecords(int roll, String name, int marks, String city) {
		String sql = "UPDATE tblstudent  Set name =? ,city=?, marks=? where roll=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, city);
			ps.setInt(3, marks);
			ps.setInt(4, roll);
			int n = ps.executeUpdate();
		} catch (Exception e) {
		}
	}
	/*
	 * public show searchByRoll(int roll) { show s1 = null; String sql =
	 * "SELECT * FROM student where roll=?"; try { ps = con.prepareStatement(sql);
	 * ps.setInt(1, roll); rs = ps.executeQuery(); if (rs.next()) { s1 = new show();
	 * s1.setRoll(rs.getInt(1)); s1.setName(rs.getString(2));
	 * s1.setMarks(rs.getInt(3)); } } catch (SQLException e) { e.printStackTrace();
	 * } return s1; }
	 */
}
