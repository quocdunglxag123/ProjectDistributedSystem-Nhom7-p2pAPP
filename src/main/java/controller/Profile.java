package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;
import dao.*;
import logincookie.CookieUtils;


@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Member CurrentMember = new Member();

	public Profile() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idmember= Integer.parseInt(CookieUtils.get("idmember",request)) ;
		// Sau khi edit ID xong thi Show ID ra
		DAOMember dao = new DAOMember();
		Member showmember = dao.getMember(idmember);
		
		request.setAttribute("showmember", showmember);
	}

}
