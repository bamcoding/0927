package net.homework1.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.homework1.dao.ArticleDao;
import net.homework1.dao.ArticleDaoImpl;

public class DoDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String artclIdParam = request.getParameter("artclId");
		int artclId = Integer.parseInt(artclIdParam);
		ArticleDao dao = new ArticleDaoImpl();
		dao.deleteArtcl(artclId);

		response.sendRedirect("./article");
	}

}
