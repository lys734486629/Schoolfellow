package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javabean.UserBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Countservlet extends HttpServlet {


		public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			
			PrintWriter out = response.getWriter();	
			request.setCharacterEncoding("UTF-8");
			HttpSession session=request.getSession(true);
			String username=(String)session.getAttribute("username");
		    username=new String(username.getBytes("UTF-8"));
		String identity=(String)session.getAttribute("identity");
	//	String current=(String)request.getAttribute("current");1
		String major=(String)request.getParameter("major");
		String year=(String)request.getParameter("year");
		String pingjun=null;
		UserBean user=new UserBean();
			 
				
		
		
		try{
			System.out.println("major"+major);
			pingjun=user.count(major, year);
            session.setAttribute("major", major)  ;
            session.setAttribute("year", year);
            session.setAttribute("pingjun", pingjun);
            
			out.println("<script language=javascript>alert('≤È—Ø≥…π¶!');</script>");
				 out.println("<script language=javascript>window.location.href='../countresult.jsp';</script>");
		}catch(Exception e){}
		out.flush();
		out.close();
	
		}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		doGet(request,response);
	
	}

	
}
