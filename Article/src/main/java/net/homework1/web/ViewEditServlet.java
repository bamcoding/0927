package net.homework1.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.homework1.dao.ArticleDao;
import net.homework1.dao.ArticleDaoImpl;
import net.homework1.vo.ArticleVO;

public class ViewEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewEditServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String artclIdParam = request.getParameter("artclId");
		int artclId = Integer.parseInt(artclIdParam);
		
		ArticleDao dao = new ArticleDaoImpl();
		ArticleVO article = dao.getArtclById(artclId);
		
		String content = article.getContent().replaceAll("<br/>", "\n");
				
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/edit.jsp");
		request.setAttribute("article", article);
		request.setAttribute("content", content);
		
		rd.forward(request, response);
	}

}
