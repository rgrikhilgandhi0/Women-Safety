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
import DAO.LoginDAO;
import DAO.PoliceStaffDAO;
import DAO.PoliceStationDAO;
import DAO.PostDAO;
import VO.AreaVO;
import VO.LoginVO;
import VO.PoliceStaffVO;
import VO.PoliceStationVO;
import VO.PostVO;

/**
 * Servlet implementation class AddPoliceStaff
 */
@WebServlet("/PoliceStaffController")
public class PoliceStaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PoliceStaffController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("searchPoliceStaff"))
		{
			searchPoliceStaff(request, response);
		}
		else if(flag!=null && flag.equals("loadPoliceStaff"))
		{
			loadPoliceStaff(request, response);
		}
		if(flag!=null && flag.equals("editPoliceStaff"))
		{
			editPoliceStaff(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("insertPoliceStaff"))
		{
			insertPoliceStaff(request,response);
		}
		if(flag!=null && flag.equals("updatePoliceStaff"))
		{
			updatePoliceStaff(request, response);
		}
	}
	private void insertPoliceStaff(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException 
	{	
		String policeName = request.getParameter("policeName");
		int postId= Integer.parseInt(request.getParameter("postId"));
		int areaId= Integer.parseInt(request.getParameter("areaId"));
		int policeStationId= Integer.parseInt(request.getParameter("policeStationId"));
		String experience = request.getParameter("experience");
		long contactNo =Integer.parseInt(request.getParameter("contactNo"));
		String emailId = request.getParameter("emailId");
		String password = request.getParameter("password");
		String achievements = request.getParameter("achievements");
		
		PoliceStaffVO policeStaffVO = new PoliceStaffVO(); 		
	//	System.out.println(".......................policename "+policeName+"expr "+ experience + "contact " + contactNo+"email "+emailId+"achiv "+ achievements);

		PostVO postVO = new PostVO();
		postVO.setPostId(postId);
		policeStaffVO.setPostVO(postVO);
		
		AreaVO areaVO = new AreaVO();
		areaVO.setAreaId(areaId);
		policeStaffVO.setAreaVO(areaVO);
		
		PoliceStationVO policeStationVO = new PoliceStationVO();
		policeStationVO.setPoliceStationId(policeStationId);
		policeStaffVO.setPoliceStationVO(policeStationVO);

		LoginVO loginVO = new LoginVO();
		loginVO.setEmailId(emailId);
		loginVO.setPassword(password);
		loginVO.setUserType("PoliceStaff");
		
		policeStaffVO.setPoliceName(policeName);
		policeStaffVO.setExperience(experience);
		policeStaffVO.setContactNo(contactNo);
		policeStaffVO.setAchievements(achievements);
		policeStaffVO.setLoginVO(loginVO);
		
		LoginDAO loginDAO = new LoginDAO();
		loginDAO.insertLogin(loginVO);
		
		PoliceStaffDAO policeStaffDAO = new PoliceStaffDAO();
		policeStaffDAO.insertPoliceStaff(policeStaffVO);
		
		response.sendRedirect("admin/addPoliceStaff.jsp");

		
	}

	protected void searchPoliceStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	HttpSession session = request.getSession();
	
	PoliceStaffVO policeStaffVO = new PoliceStaffVO();		
	
	PoliceStaffDAO policeStaffDAO = new PoliceStaffDAO();
	List ls = policeStaffDAO.searchPoliceStaff(policeStaffVO);
	session.setAttribute("ls", ls);
	response.sendRedirect("admin/searchPoliceStaff.jsp");
	}
	
	protected void loadPoliceStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	HttpSession session = request.getSession();
	
	PoliceStationVO policeStationVO = new PoliceStationVO();
	AreaVO areaVO = new AreaVO();
	PostVO postVO = new PostVO();
	
	PoliceStationDAO policeStationDAO = new PoliceStationDAO();
	List lsPoliceStation = policeStationDAO.searchPoliceStation(policeStationVO);
	session.setAttribute("lsPoliceStation", lsPoliceStation);

	AreaDAO areaDAO = new AreaDAO();
	List lsArea = areaDAO.searchArea(areaVO);
	session.setAttribute("lsArea", lsArea);
	
	PostDAO postDAO = new PostDAO();
	List lsPost= postDAO.searchPost(postVO);
	session.setAttribute("lsPost", lsPost);
	
	response.sendRedirect("admin/addPoliceStaff.jsp");
	}
	protected void editPoliceStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			int policeStaffId = Integer.parseInt(request.getParameter("policeStaffId"));
			HttpSession session = request.getSession();
			PoliceStaffVO policeStaffVO = new PoliceStaffVO();
			policeStaffVO.setPoliceStaffId(policeStaffId);
			
			PoliceStationVO policeStationVO = new PoliceStationVO();
			AreaVO areaVO = new AreaVO();
			PostVO postVO = new PostVO();
			
			PoliceStaffDAO policeStaffDAO  = new PoliceStaffDAO();
			List editls = policeStaffDAO.editPoliceStaff(policeStaffVO);
			session.setAttribute("editls", editls);
			
			PoliceStationDAO policeStationDAO = new PoliceStationDAO();
			List lsPoliceStation = policeStationDAO.searchPoliceStation(policeStationVO);
			session.setAttribute("lsPoliceStation", lsPoliceStation);

			AreaDAO areaDAO = new AreaDAO();
			List lsArea = areaDAO.searchArea(areaVO);
			session.setAttribute("lsArea", lsArea);
			
			PostDAO postDAO = new PostDAO();
			List lsPost= postDAO.searchPost(postVO);
			session.setAttribute("lsPost", lsPost);

			response.sendRedirect("admin/editPoliceStaff.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	protected void updatePoliceStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String policeName = request.getParameter("policeName");
		/*String post = request.getParameter("post");
		String policeStation = request.getParameter("policeStation");
		String area = request.getParameter("area");*/
		int postId= Integer.parseInt(request.getParameter("postId"));
		int areaId= Integer.parseInt(request.getParameter("areaId"));
		int policeStationId= Integer.parseInt(request.getParameter("policeStationId"));
		String experience = request.getParameter("experience");
		int contactNo = Integer.parseInt(request.getParameter("contactNo"));
		String emailId = request.getParameter("emailId");
		String achievements = request.getParameter("achievements");
		int policeStaffId = Integer.parseInt(request.getParameter("policeStaffId"));
		
		PoliceStaffVO policeStaffVO = new PoliceStaffVO(); 		
		
		policeStaffVO.setPoliceStaffId(policeStaffId);
		policeStaffVO.setPoliceName(policeName);
		policeStaffVO.setExperience(experience);
		policeStaffVO.setContactNo(contactNo);
	
		policeStaffVO.setAchievements(achievements);
		
		PostVO postVO = new PostVO();	
		postVO.setPostId(postId);
		policeStaffVO.setPostVO(postVO);
		
		AreaVO areaVO = new AreaVO();	
		areaVO.setAreaId(areaId);
		policeStaffVO.setAreaVO(areaVO);
		
		PoliceStationVO policeStationVO=new PoliceStationVO();
		policeStationVO.setPoliceStationId(policeStationId);
		policeStaffVO.setPoliceStationVO(policeStationVO);
		
		
		PoliceStaffDAO policeStaffDAO = new PoliceStaffDAO();
		policeStaffDAO.Update(policeStaffVO);
		searchPoliceStaff(request, response);
	}
	}