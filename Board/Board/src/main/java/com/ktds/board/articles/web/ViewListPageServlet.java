package com.ktds.board.articles.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ktds.board.articles.vo.ArticlesVO;
import com.ktds.board.user.vo.UserVO;

public class ViewListPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewListPageServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UserVO user = new UserVO();
		user.setUserNickname("Taehyun");
		
		List<ArticlesVO> dummyArticles = new ArrayList<ArticlesVO>();
		ArticlesVO article = new ArticlesVO();
		article.setArticleId("1");
		article.setArticleSubject("첫 번째 글 입니다.");
		article.setUserVO(user);
		article.setCreatedDate("2016-09-28");
		article.setHitCount(15);
		article.setRecommendCount(0);
		dummyArticles.add(article);
		
		article = new ArticlesVO();
		article.setArticleId("2");
		article.setArticleSubject("두 번째 글 입니다.");
		article.setUserVO(user);
		article.setCreatedDate("2016-09-28");
		article.setHitCount(15);
		article.setRecommendCount(0);
		dummyArticles.add(article);
		
		article = new ArticlesVO();
		article.setArticleId("3");
		article.setArticleSubject("세 번째 글 입니다.");
		article.setUserVO(user);
		article.setCreatedDate("2016-09-28");
		article.setHitCount(15);
		article.setRecommendCount(0);
		dummyArticles.add(article);
		
		String viewPath = "/WEB-INF/view/articles/list.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(viewPath);
		request.setAttribute("articles", dummyArticles);
		rd.forward(request, response);
	}

}
