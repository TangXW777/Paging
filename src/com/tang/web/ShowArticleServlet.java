package com.tang.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tang.service.ArticleDaoImpl;

public class ShowArticleServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ArticleDaoImpl service = new ArticleDaoImpl();
		int count = service.getArticleCount();
		req.getSession().setAttribute("articlecount", count);
		
		//req.getRequestDispatcher("../showarticle.jsp").forward(req, resp);
		resp.sendRedirect("../showarticle.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
	
}
