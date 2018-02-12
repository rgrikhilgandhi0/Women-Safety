package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AreaDAO;
import DAO.FeedbackDAO;
import VO.AreaVO;
import VO.FeedbackVO;

/**
 * Servlet implementation class FeedbackController
 */
@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackController() 
    {
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
		
		if(flag!=null && flag.equals("insertFeedback"))
		{
			System.out.println("--------insertFeedback-------");
			insertFeedback(request,response);
		}
		if(flag!=null && flag.equals("searchFeedback"))
		{
			searchFeedback(request,response);
			response.sendRedirect("admin/viewFeedback.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("insertFeedback"))
		{
			System.out.println("--------insertFeedback-------");
			insertFeedback(request,response);
		}
		// TODO Auto-generated method stub
	}
	protected void insertFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String feedbackDescription = request.getParameter("feedbackDescription");
		
		FeedbackVO feedbackVO = new FeedbackVO();
		feedbackVO.setFeedbackDescription(feedbackDescription);
		System.out.println("--------Feedback-------");
		FeedbackDAO feedbackDAO = new FeedbackDAO();
		feedbackDAO.insertFeedback(feedbackVO);
		response.sendRedirect("user/feedback.jsp");
	}
	protected void searchFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		
		FeedbackVO feedbackVO = new FeedbackVO();		
		
		FeedbackDAO feedbackDAO = new FeedbackDAO();
		List lsFeedback = feedbackDAO.searchFeedback(feedbackVO);
		System.out.println("------------Feedback--------"+lsFeedback.size());
		session.setAttribute("lsFeedback", lsFeedback);
		
	}
}