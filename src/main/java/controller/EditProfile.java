package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOContent;
import dao.DAOMember;
import logincookie.CookieUtils;

import model.Content;

/**
 * Servlet implementation class EditContent
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idmember= Integer.parseInt(CookieUtils.get("idmember",request)) ;
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String description = request.getParameter("description");
		String updateTime = java.time.LocalDateTime.now().toString();
		
		if (firstname.length()<=30 && firstname.length()>=3 &&lastname.length()<=30 && lastname.length()>=3 && phone.length()<=13 && phone.length()>=9 )
		{
		
		DAOMember dao = new DAOMember();
		dao.editMember(idmember, firstname, lastname, email, phone, description,updateTime);
		
		request.setAttribute("message", "Update Successfully");
		}
		else {
			request.setAttribute("message", "Update Fail");
		}
		
		request.getRequestDispatcher("editprofile.tiles").forward(request, response);
	}

}
