package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.DBConnection;

import java.util.ArrayList;
import java.util.List;

import org.springframework.asm.commons.RemappingAnnotationAdapter;

import model.Content;

public class DAOContent {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

// CRUD Content
// Select
	public List<Content> getAllContent(int authorid) {
		List<Content> list = new ArrayList<>();
		//String query = "select * from Content where authorid=?";
		String query = "select * from Content";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			//ps.setInt(1, authorid);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public Content getContent(int id) {
		String query = "select * from Content where id = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8));
			}
		} catch (Exception e) {
		}
		return null;
	}

// Search
	public List<Content> searchContents(String txtSearch, int idmember) {
		List<Content> list = new ArrayList<>();
		//String query = "select * from Content where (title like ? or content like ? or brief like ? ) and authorid=?;";
		String query = "select * from Content where (title like ? or content like ? or brief like ? );";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			ps.setString(2, "%" + txtSearch + "%");
			ps.setString(3, "%" + txtSearch + "%");
			//ps.setInt(4, idmember);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
		} catch (Exception e) {

		}
		return list;
	}

	/*
	 * public static void main(String[] args) { DAOContent dao = new DAOContent();
	 * List<Content> list = dao.searchContents("ngan", 1);
	 * 
	 * for (Content o : list) { System.out.print(o);
	 * 
	 * } System.out.print(1); }
	 */

// Insert
	public Content insertContent(String title, String brief, String content, String createddate, String updatetime,
			int authorid) {

		String query = "INSERT INTO Content(title,brief,content,createddate,updatetime,authorid) VALUES (?,?,?,?,?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, title);
			ps.setString(2, brief);
			ps.setString(3, content);
			ps.setString(4, createddate);
			ps.setString(5, updatetime);
			ps.setInt(6, authorid);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

// Update
	public Content editContent(int id, String title, String brief, String content, String updatetime) {
		String query = "update Content set title = ?,brief= ?, content =?, updatetime =? where id = ?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, title);
			ps.setString(2, brief);
			ps.setString(3, content);
			ps.setString(4, updatetime);
			ps.setInt(5, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

// Delete
	public Content deleteContent(String id) {
		String query = "Delete from Content where id = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

}