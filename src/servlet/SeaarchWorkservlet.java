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

public class SeaarchWorkservlet extends HttpServlet {


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
		String current=(String)request.getParameter("current");
		String major=null;
		String number=null;
		UserBean user=new UserBean();
		if(identity.equals("1"))
		{     
			 major=(String)request.getParameter("major");
			 
				
		}
		if(identity.equals("2"))
		{
		 number=user.getSchoolnumber(username);
		}
		
		
		
		try{
			System.out.println("current"+current);
			System.out.println("major"+major);
			//session.setAttribute("current", current);
			ArrayList<UserBean> userlist1=user.searchwork(username,identity,current,major,number);
            session.setAttribute("userlist1",userlist1);
            
			out.println("<script language=javascript>alert('≤È—Ø≥…π¶!');</script>");
			if(identity.equals("1"))
				 out.println("<script language=javascript>window.location.href='../searchwork2.jsp';</script>");
			else
			{
		       if(current.equals("1"))
			      out.println("<script language=javascript>window.location.href='../searchwork1.jsp';</script>");
		         else if(current.equals("2"))
		  	 out.println("<script language=javascript>window.location.href='../searchwork2.jsp';</script>");
			}
		}catch(Exception e){}
		out.flush();
		out.close();
	
		}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		doGet(request,response);
	
	}

	
}
