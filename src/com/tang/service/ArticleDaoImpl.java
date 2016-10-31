package com.tang.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tang.dbc.DBManager;
import com.tang.vo.Article;

public class ArticleDaoImpl implements ArticleDao{
	private int pageIndex = 0;
	private int start = 0; // 当前查询的开始值
	private int pageSize = 0;  // 每次查询的数量
	private Connection conn = DBManager.getConnection();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	// 获取图书总数
	public int getArticleCount(){
		int count = 0;
		String sql = "SELECT COUNT(*) FROM article";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	// 查找图书
	public List<Article> findArticle(int start, int end) {
		List<Article> list = new ArrayList<Article>();
		String sql = "SELECT * FROM article LIMIT " + start + ","+ pageSize;
		//String sql = "SELECT * FROM article LIMIT 0,5";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			Article article = null;
			while(rs.next()){
				article = new Article();
				article.setId(rs.getInt("id"));
				article.setTitle(rs.getString("title"));
				article.setPubdate(rs.getInt("pubdate"));
				list.add(article);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}

	public int getStart() {
		this.setStart();
		return start;
	}

	public void setStart() {
		this.start = this.pageIndex * this.pageSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	
	
	
}
