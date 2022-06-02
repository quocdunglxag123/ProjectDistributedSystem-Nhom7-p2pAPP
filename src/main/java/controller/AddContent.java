package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOContent;
import logincookie.CookieUtils;

/**
 * Servlet implementation class AddContent
 */
@WebServlet("/AddContent")
public class AddContent extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int publiccontent = 1;
		String title = request.getParameter("title");
		String brief = request.getParameter("brief");
		String content = request.getParameter("content");
		String createddate = java.time.LocalDateTime.now().toString();
		int idmember = Integer.parseInt(CookieUtils.get("idmember", request));
		if(request.getParameter("publiccontent") != null)
		{
			publiccontent =Integer.parseInt(request.getParameter("publiccontent"));
		}
		
		
		if (title != null && brief != null && content != null && title != "" && brief != "" && content != "") {
				DAOContent dao = new DAOContent();
				dao.insertContent(title, brief, content, createddate, createddate, idmember,publiccontent);
				request.setAttribute("message", "Insert Successfully");
		} else {
			request.setAttribute("message", "Insert Fail");
		}

		request.getRequestDispatcher("formcontent.tiles").forward(request, response);
	}

}
