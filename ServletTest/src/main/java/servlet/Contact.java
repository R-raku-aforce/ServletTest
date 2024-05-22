package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns= {"/JSP/contact"})
public class Contact extends HttpServlet{

	public void doPost(
		HttpServletRequest request, HttpServletResponse response
	)throws ServletException, IOException{
				
		response.setContentType("text/html; charset = UTF-8");		
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
			
		String user = request.getParameter("user");	
		String company = request.getParameter("company");	
		String email = request.getParameter("email");	
		String review = request.getParameter("review");	
		String[] genres = request.getParameterValues("genre");
		String radioValue = request.getParameter("quiz");
		
		request.setAttribute("user", user);
		request.setAttribute("company", company);
		request.setAttribute("email", email);
		request.setAttribute("review", review);
		request.setAttribute("genres", genres);
		request.setAttribute("radioValue", radioValue);
		
		if("Yes".equals(radioValue)) {
			request.getRequestDispatcher("/JSP/download.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/JSP/result.jsp").forward(request, response);
		}
		
	}
}