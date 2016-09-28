package net.gondor.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gondor.dao.Dao;
import net.gondor.dao.DaoImpl;
import net.gondor.vo.VO;

/**
 * Servlet implementation class ViewDetailServlet
 */
public class ViewDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam);
		Dao dao = new DaoImpl();
		VO vo = dao.getOne(id);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/detail.jsp");
		request.setAttribute("vo", vo);
		rd.forward(request, response);
		
	}

}
