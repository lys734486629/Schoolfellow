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

public class SearchAllservlet extends HttpServlet {


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
		UserBean user=new UserBean();
		
		
		
		
		try{
			System.out.println("current"+current);
			
			if(current.equals("3"))
			{
			ArrayList<UserBean> userlist1=user.searchAllwork(current);
            session.setAttribute("userlist1",userlist1);
			out.println("<script language=javascript>alert('查询成功!');</script>");
				 out.println("<script language=javascript>window.location.href='../searchAllwork.jsp';</script>");
			}
			else
			{
				ArrayList<UserBean> userlist1=user.searchAllinfo(current);
	            session.setAttribute("userlist1",userlist1);
				out.println("<script language=javascript>alert('查询成功!');</script>");
		       if(current.equals("1"))
			    out.println("<script language=javascript>window.location.href='../searchAllstudent.jsp';</script>");
		         else if(current.equals("2"))
		  	 out.println("<script language=javascript>window.location.href='../searchAllschoolfellow.jsp';</script>");
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
