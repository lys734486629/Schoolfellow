package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javabean.UserBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Loginservlet extends HttpServlet {

	


		public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("GB2312");
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			
			PrintWriter out = response.getWriter();	
			
        String username=request.getParameter("username");
		username=new String(username.getBytes("UTF-8"));
		String identity=request.getParameter("identity");
		String password=request.getParameter("password");
		password=new String(password.getBytes("UTF-8"));
		
		if(username==null||username.length()<1){
			out.println("<script language=javascript>window.location.href='../login.jsp?err=username';</script>");
			out.flush();
			out.close();
		}
		if(password==null||password.length()<1){
			out.println("<script language=javascript>window.location.href='../login.jsp?err=password';</script>");
			out.flush();
			out.close();
		}
		
		
		
		UserBean user=new UserBean();
		user.setUsername(username);
		user.setIdentity(identity);
		user.setPassword(password);
		
		
		
		if(user.match(username, identity, password))
		{   
			String number=user.getNumber();
			HttpSession session=request.getSession(true);
			session.setAttribute("username", username);
			session.setAttribute("identity", identity);
			session.setAttribute("number", number);
			out.println("<script language=javascript>alert('��½�ɹ�!');</script>");
			if(identity.equals("1"))
			    out.println("<script language=javascript>window.location.href='../student.jsp';</script>");
			else if(identity.equals("2"))
				out.println("<script language=javascript>window.location.href='../schoolfellow.jsp';</script>");
			else 
				out.println("<script language=javascript>window.location.href='../manager.jsp';</script>");
			
		}else{
			out.println("<script language=javascript>alert('�������,�����µ�¼!');</script>");
			out.println("<script language=javascript>window.location.href='../login.jsp';</script>");
			out.flush();
			out.close();
		}
		out.flush();
		out.close();
	
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		doGet(request,response);
	
	}

	
}
