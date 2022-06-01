package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Content;
import model.Member;

public class DAOMember {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

// CRUD Member
// Select
	public List<Member> getAllMember() {
		List<Member> list = new ArrayList<>();
		String query = "select * from Member";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Member(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public Member getMember(int id) {
		String query = "select * from Member where id = " + id;
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			rs.next();
			return new Member(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

// Insert
	public Content insertMember(String username, String password, String email, String createdDate) {

		String query = "INSERT INTO Member(username,password,email,createdDate) VALUES (?,?,?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.setString(4, createdDate);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

// Update

	public Member editMember(int id, String firstname, String lastname, String email, String phone, String description, String updateTime) {
		String query = "update Member set firstname = ?,lastname= ?, email =?, phone =?,description=?,updateTime=? where id = ?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, description);
			ps.setString(6, updateTime);
			ps.setInt(7, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}
	
	
// Delete
}
