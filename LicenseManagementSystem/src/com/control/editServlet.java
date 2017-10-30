package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CustomerDao;

/**
 * Servlet implementation class editServlet
 */
public class editServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		int lno = Integer.parseInt(request.getParameter("lid"));
		
		if(action.equals("Update")){
			String address = request.getParameter("address");
			String mob = request.getParameter("contact");
			PrintWriter out = response.getWriter();
			
			System.out.println(" after edit add n mob "+address +mob);
			String status = CustomerDao.editAddress(lno, address, mob);
			System.out.println("stsus: "+status);
			 if(status.equals("updated")){
				 
				 out.println("<script type=\"text/javascript\">"+
				   "alert('Information Updated SucessFully');"+
				   "location='Home.jsp';"+
				   "</script>");
			
		} else {
			out.println("<script type=\"text/javascript\">"+
					   "alert('Sorry Infornation Not Update');"+
					   "location='View.jsp';"+
					   "</script>");
		}
	} else
		if(action.equals("Renew")){
			PrintWriter out = response.getWriter();
			String newExDate = request.getParameter("newDate");
			String status = CustomerDao.renew(lno, newExDate);
			//System.out.println("stsus: "+status);
			 if(status.equals("sucess")){
				 
				 out.println("<script type=\"text/javascript\">"+
				   "alert('Renew Sucessfully');"+
				   "location='Home.jsp';"+
				   "</script>");
			
		} else {
			out.println("<script type=\"text/javascript\">"+
					   "alert('Sorry, We can't Renew');"+
					   "location='View.jsp';"+
					   "</script>");
		}
		}
		
	}

}
