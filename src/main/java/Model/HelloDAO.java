package Model;

import java.sql.*;
import java.sql.Date;
import java.time.LocalDate;
import java.util.*;

import javax.servlet.http.HttpSession;

import util.DBUtil;

public class HelloDAO {
    Connection conn;
    PreparedStatement pstmt;
    ResultSet rs;

    public String login(String userId, String password) {
    	String loginId = "undefined";
        try {
            conn = DBUtil.getConnection();
            String sql = "Select userId from user_info where userId = ? and password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            if(rs.next()) {
            	loginId = rs.getString("userId");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
        return loginId;
    }
    
    public void sign(String userId, String password, String userName, String userPhone, String status) {
        try {
            conn = DBUtil.getConnection();
            String sql = "Insert into user_info values(?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, password);
            pstmt.setString(3, userName);
            pstmt.setString(4, userPhone);
            pstmt.setString(5, status);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
    }

    public List<Post> listGetAll() {
        List<Post> list = new ArrayList<>();
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM post order by identyfier_code desc";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()) {
            	String post_type = rs.getString("post_type");
            	if (!(post_type.equals("n"))) {
                    String title = rs.getString("title");
                    String content = rs.getString("content");
                    String userId = rs.getString("userId");
                    LocalDate written_date = rs.getDate("written_date").toLocalDate(); // 시간 없이 날짜만
                    String code = rs.getString("identyfier_code");
	                Post post = new Post(title, content, written_date, userId, post_type, code);
	                list.add(post);
            	}
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
        return list;
    }
    
    public List<Post> noticeGetAll() {
        List<Post> notice = new ArrayList<>();
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM post order by identyfier_code desc";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()) {
            	String post_type = rs.getString("post_type");
            	if (post_type.equals("n")) {
                    String title = rs.getString("title");
                    String content = rs.getString("content");
                    Date dbDate = rs.getDate("written_date");  // java.sql.Date
                    LocalDate written_date = dbDate.toLocalDate(); // 시간 없이 날짜만
                    String userId = rs.getString("userId");
                    String code = rs.getString("identyfier_code");
	                Post post = new Post(title, content, written_date, userId, post_type, code);
	                notice.add(post);
            	}
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
        return notice;
    }
    
    public Post getPostByCode(String identyfier_code) {
    	Post post = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM post WHERE identyfier_code = ?";
            pstmt = conn.prepareStatement(sql);
            int identyfier = Integer.parseInt(identyfier_code);
            pstmt.setInt(1, identyfier);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                String title = rs.getString("title");
                String content = rs.getString("content");
                Date dbDate = rs.getDate("written_date");  // java.sql.Date
                LocalDate written_date = dbDate.toLocalDate(); // 시간 없이 날짜만
                String userId = rs.getString("userId");
                String post_type = rs.getString("post_type");
                String code = rs.getString("identyfier_code");
                
                post = new Post(title, content, written_date, userId, post_type, code);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
        return post;
    }
}

