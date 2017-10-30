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
 * Servlet implementation class regServlet
 */
public class regServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regServlet() {
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
		
		customer bean = new customer();
		int lno = CustomerDao.lastId();
		lno++;
		//int lno = Integer.parseInt(request.getParameter("lno"));
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String mob = request.getParameter("contact");
		String place = request.getParameter("place");
		String fname = request.getParameter("fname");
		String dob = request.getParameter("dob");
		String edate = request.getParameter("edate");
		String bg = request.getParameter("bg");
		String l_type = request.getParameter("ltype");
		
		bean.setL_no(lno);
		bean.setName(name);
		bean.setAddress(address);
		bean.setMob(mob);
		bean.setPlace(place);
		bean.setFnmae(fname);
		bean.setDob(dob);
		bean.setEdate(edate);
		bean.setBg(bg);
		bean.setL_type(l_type);
		
		System.out.println("mob :" +bean.getMob());
		String status = CustomerDao.insertCust(bean);
		if(status == "Sucess")
		{
			List<customer> l = CustomerDao.viewIdValue(lno);
			request.setAttribute("list", l);

			RequestDispatcher rd = request.getRequestDispatcher("regSucess.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("ErrorPage.jsp");
			rd.forward(request, response);
		}
		
	}

}
