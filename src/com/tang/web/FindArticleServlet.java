package com.tang.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tang.service.ArticleDaoImpl;
import com.tang.vo.Article;

public class FindArticleServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 设置编码，规定输出内容形式
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");   // 设置流的输出形式
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		ArticleDaoImpl service = new ArticleDaoImpl();
		
		// 设置当前页和查询数量
		int pageIndex = Integer.parseInt(req.getParameter("pageIndex"));
		int pageSize = Integer.parseInt(req.getParameter("pageSize"));
		service.setPageIndex(pageIndex);
		service.setPageSize(pageSize);
		int start = service.getStart();
		
		List<Article> list = service.findArticle(start, pageSize);
	
		// 绘制刷新的表格
		out.print("<table border='1'>");
		out.print("<tr>");
		out.print("<td>书号</td>");
		out.print("<td>书名</td>");
		out.print("<td>出版日期</td>");
		for(Article article : list){
			out.print("<tr>");
			out.print("<td>" + article.getId() + "</td>");
			out.print("<td>" + article.getTitle() + "</td>");
			out.print("<td>" + article.getPubdate() + "</td>");
			out.print("</tr>");
		}
		out.print("</table>");
		
		
		//System.out.println(((List<Article>)req.getSession().getAttribute("articlelist")).size());
		//resp.sendRedirect(req.getContextPath() + "/servlet/ArticleUI");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
