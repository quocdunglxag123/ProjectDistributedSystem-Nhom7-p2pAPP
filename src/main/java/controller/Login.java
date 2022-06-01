package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.jasper.tagplugins.jstl.core.If;

import logincookie.CookieUtils;

import dao.DAOMember;
import model.Member;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = CookieUtils.get("email", request);

		if (email != null && !email.equals("")) {
			
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			return;
		}
		request.getRequestDispatcher("/views/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idmember = -1;
		try {
			Member user = new Member();
			BeanUtils.populate(user, request.getParameterMap());
			DAOMember dao = new DAOMember();
			List<Member> list = dao.getAllMember();
			for (Member account : list) {
				String email = account.getEmail();
				String pass = account.getPassword();
				if (user.getEmail().equals(email) && user.getPassword().equals(pass)) {
					
					if (user.isRemember()) {
						CookieUtils.add("email", user.getEmail(), 1, response);
					} else {
						CookieUtils.add("email", user.getEmail(), 0, response);
					}

					idmember = account.getId();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (idmember != -1) {
	
			CookieUtils.add("idmember", String.valueOf(idmember), 1, response);
		
			if(CookieUtils.get("check"+idmember, request).equals("on"))
			{
				response.sendRedirect("viewcontent.tiles");
			}
			else {
			CookieUtils.add("check"+idmember,"on", 1, response);
			response.sendRedirect("editprofile.tiles");
			}
		} else {
			request.setAttribute("message", "invalid username or password");
			request.getRequestDispatcher("/views/login.jsp").forward(request, response);
		}
	}

}
