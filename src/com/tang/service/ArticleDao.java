package com.tang.service;

import java.util.List;

import com.tang.vo.Article;

public interface ArticleDao {
	// 获取图书总数
	public int getArticleCount();
	
	// 分页查询
	public List<Article> findArticle(int start, int end);
}
