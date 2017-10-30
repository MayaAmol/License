package com.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CustomerDao;
import com.model.customer;

/**
 * Servlet implementation class oprationServlet
 */
public class oprationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public oprationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int lno = Integer.parseInt(request.getParameter("lid"));
		
		String action = request.getParameter("action");
		
		
		
		if(action.equals("Update")){
			List<customer> l = CustomerDao.getIdValue(lno);
			 request.setAttribute("list", l);
			RequestDispatcher rd = request.getRequestDispatcher("Edit.jsp");
			rd.forward(request, response);
		
			
		} else if(action.equals("View Details")){
			List<customer> l = CustomerDao.viewIdValue(lno);
			request.setAttribute("list", l);
			RequestDispatcher rd = request.getRequestDispatcher("ShowDetails.jsp");
			rd.forward(request, response);
			
			System.out.println("");
			
		} else if(action.equals("Renew License")){
			
			List<customer> l = CustomerDao.viewIdValue(lno);
			request.setAttribute("list", l);
			CustomerDao.renewIdValue(lno);
			System.out.println("in renew");
			RequestDispatcher rd = request.getRequestDispatcher("Renew.jsp");
			rd.forward(request, response);
			
		} 
		 
		
	}

}
