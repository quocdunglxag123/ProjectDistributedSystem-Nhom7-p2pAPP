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

@WebServlet("/SearchContent")
public class SearchContent extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String txtSearchString = request.getParameter("search");
		int idmember= Integer.parseInt(CookieUtils.get("idmember",request)) ;
		String start = request.getParameter("start");
		if (start == null) {
			start = "0";
		}
		
		DAOContent daoContent = new DAOContent();
		List<Content> list = daoContent.searchContents(txtSearchString,idmember);
		int end = list.size();
		request.setAttribute("start", start);
		request.setAttribute("end", end);
		request.setAttribute("listcontent", list);
		request.setAttribute("keysearch", txtSearchString);
		
		if(end==0) {
			 request.setAttribute("message", "Result not found");
			 request.getRequestDispatcher("search.tiles").forward(request, response);
		}
		else {
			request.getRequestDispatcher("search.tiles").forward(request, response);
		}
	
	}
 
}