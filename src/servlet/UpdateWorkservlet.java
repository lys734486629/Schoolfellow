package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javabean.UserBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UpdateWorkservlet extends HttpServlet {

	


		public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			
			PrintWriter out = response.getWriter();
			
			HttpSession session=request.getSession(true);
			String username=(String)session.getAttribute("username");
		    username=new String(username.getBytes("UTF-8"));
		
			String company=request.getParameter("company");
	
			String industry=request.getParameter("industry");
			
			String post=request.getParameter("post");
			
			String salary=request.getParameter("salary");
			
			String workchange=request.getParameter("workchange");
			
			String workyear=request.getParameter("workyear");
			
		
		
		UserBean user=new UserBean();
		user.setCompany(company);
		user.setIndustry(industry);
		user.setPost(post);
		user.setSalary(salary);
		user.setWorkchange(workchange);
		user.setWorkyear(workyear);
		
		String number=user.getSchoolnumber(username);
		String college=user.getSchoolcollege(username);
		String major=user.getSchoolmajor(username);
		
		
		
		try {
			
		
		user.updatework(number,college,major);
			
		    out.println("<script language=javascript>alert('×¢²á³É¹¦!');</script>");
				out.println("<script language=javascript>window.location.href='../blank.jsp';</script>");
			
		} catch (Exception e) {
			   
			e.printStackTrace();
		}
		out.flush();
		out.close();
	
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		doGet(request,response);
	
	}

	
}
