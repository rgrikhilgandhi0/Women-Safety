package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ComplaintDAO;
import DAO.FeedbackDAO;
import DAO.UserFeedbackDAO;
import VO.ComplaintVO;
import VO.FeedbackVO;
import VO.LoginVO;
import VO.UserFeedbackVO;

/**
 * Servlet implementation class FeedbackController
 */
@WebServlet("/UserFeedbackController")
public class UserFeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserFeedbackController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("searchFeedback"))
		{
			searchFeedback(request, response);
		}
		if(flag!=null && flag.equals("insertFeedback"))
		{
			System.out.println("feedback inserted!!!");
			insertFeedback(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		System.out.println(flag);
		if(flag!=null && flag.equals("insertFeedback"))
		{
			System.out.println("feedback inserted!!!");
			insertFeedback(request, response);
		}
	}
	protected void insertFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		HttpSession session = request.getSession();
		System.out.println("Insert Method call.........");
		
		String feedbackDescription = request.getParameter("feedbackDescription");
		int userID = (Integer)session.getAttribute("userID");
		
		LoginVO loginVO = new LoginVO();
		loginVO.setLoginId(userID);
		
		UserFeedbackVO userFeedbackVO = new UserFeedbackVO();
		userFeedbackVO.setFeedbackDescription(feedbackDescription);
		userFeedbackVO.setFrom(loginVO);
		
		UserFeedbackDAO userFeedbackDAO = new UserFeedbackDAO();
		userFeedbackDAO.insertFeedback(userFeedbackVO);
	
		response.sendRedirect("user/postFeedback.jsp");	
	}
	protected void searchFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		
		UserFeedbackVO userFeedbackVO = new UserFeedbackVO();		
		
		UserFeedbackDAO userFeedbackDAO = new UserFeedbackDAO();
		List lsFeedback = userFeedbackDAO.searchFeedback(userFeedbackVO);
		session.setAttribute("lsFeedback", lsFeedback);
		response.sendRedirect("admin/staffViewFeedback.jsp");
	}
}