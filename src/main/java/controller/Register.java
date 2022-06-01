package controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.channels.AsynchronousServerSocketChannel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dao.DAOContent;
import dao.DAOMember;
import model.Member;

@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		try {
			Member user = new Member();
			BeanUtils.populate(user, request.getParameterMap());
			String repassword= request.getParameter("repassword");
			String createdDate = java.time.LocalDateTime.now().toString();
			
			if (user.getUsername() != null && user.getEmail() != null && user.getPassword() != null && repassword != null && user.getUsername() != "" && user.getEmail() != "" && user.getPassword() != "" && repassword != "") {
				if (user.getPassword().equals(repassword) && user.getUsername().length() > 9 && user.getEmail().length() > 9 && user.getPassword().length() > 5) { 
					
					DAOMember dao = new DAOMember();
					dao.insertMember(user.getUsername(), user.getPassword(), user.getEmail(),createdDate);
					
					request.setAttribute("message", "Register Successfully");
					} else {
					request.setAttribute("message", "Register Fail");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		
		request.getRequestDispatcher("/views/register.jsp").forward(request, response);

	}
}