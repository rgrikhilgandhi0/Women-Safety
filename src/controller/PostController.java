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
import DAO.PostDAO;
import VO.AreaVO;
import VO.PostVO;

/**
 * Servlet implementation class PostController
 */
@WebServlet("/PostController")
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("searchPost"))
		{
			searchPost(request, response);
		}
		if(flag!=null && flag.equals("editPost"))
		{
			editPost(request, response);
		}
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("insertPost"))
		{
			insertPost(request, response);
		}
		if(flag!=null && flag.equals("updatePost"))
		{
			updatePost(request, response);
		}
		
	}
		
	protected void insertPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String postName = request.getParameter("postName");
		String postDescription = request.getParameter("postDescription");
		
		PostVO postVO = new PostVO();
		postVO.setPostName(postName);
		postVO.setPostDescription(postDescription);
		
		
		PostDAO postDAO = new PostDAO();
		postDAO.insertPost(postVO);
		response.sendRedirect("admin/addPost.jsp");
		
		
	}
	
	protected void searchPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	HttpSession session = request.getSession();
	
	PostVO postVO = new PostVO();		
	
	PostDAO postDAO = new PostDAO();
	List ls = postDAO.searchPost(postVO);
	session.setAttribute("ls", ls);
	response.sendRedirect("admin/searchPost.jsp");
}
	protected void editPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			int postId = Integer.parseInt(request.getParameter("postId"));
			HttpSession session = request.getSession();
			PostVO postVO = new PostVO();
			postVO.setPostId(postId);
			
			PostDAO postDAO  = new PostDAO();
			List editls = postDAO.editPost(postVO);
			session.setAttribute("editls", editls);
			response.sendRedirect("admin/editPost.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

}
	protected void updatePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String postName = request.getParameter("postName");
		String postDescription = request.getParameter("postDescription");
		int postId = Integer.parseInt(request.getParameter("postId"));
		
		PostVO postVO = new PostVO();
		postVO.setPostName(postName);
		postVO.setPostId(postId);
		postVO.setPostDescription(postDescription);
		
		PostDAO postDAO = new PostDAO();
		postDAO.Update(postVO);
		searchPost(request, response);
	}
}

