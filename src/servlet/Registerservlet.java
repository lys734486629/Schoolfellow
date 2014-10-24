package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javabean.UserBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Registerservlet extends HttpServlet {

	


		public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			
			PrintWriter out = response.getWriter();
			
			String name=request.getParameter("name");
			String number=request.getParameter("number");
			String college=request.getParameter("college");
			String major=request.getParameter("major");
			String birth=request.getParameter("birth");
			String leaveyear=request.getParameter("leaveyear");
			String nativeplace=request.getParameter("nativeplace");
            String username=request.getParameter("username");
		    String identity=request.getParameter("identity");
		    String password=request.getParameter("password");
		
		
		UserBean user=new UserBean();
		user.setName(name);
		user.setNumber(number);
		user.setCollege(college);
		user.setMajor(major);
		user.setBirth(birth);
		user.setLeaveyear(leaveyear);
		user.setNativeplace(nativeplace);
		user.setUsername(username);
		user.setIdentity(identity);
		user.setPassword(password);
		
		try {
			
			
			
		if(user.haiExist(username, identity))
		{
			
			out.println("<script language=javascript>alert('用户已存在!请重新注册!');</script>");
			out.println("<script language=javascript>window.location.href='../register.jsp';</script>");
		}
		
		user.register();
			
		    out.println("<script language=javascript>alert('注册成功!现在可以去登录了!');</script>");
				out.println("<script language=javascript>window.location.href='../login.jsp';</script>");
			
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
