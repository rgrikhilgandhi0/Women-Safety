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
import VO.AreaVO;

/**
 * Servlet implementation class AreaController
 */
@WebServlet("/AreaController")
public class AreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AreaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("searchArea"))
		{
			searchArea(request, response);
		}
		if(flag!=null && flag.equals("editArea"))
		{
			editArea(request, response);
		}	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("insertArea"))
		{
			insertArea(request, response);
		}
		if(flag!=null && flag.equals("updateArea"))
		{
			updateArea(request, response);
		}
		
	}

	protected void insertArea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		String areaName = request.getParameter("areaName");
		int areaPincode = Integer.parseInt(request.getParameter("areaPincode"));
		String areaDescription = request.getParameter("areaDescription");
		
		AreaVO areaVO = new AreaVO();		
		areaVO.setAreaName(areaName);
		areaVO.setAreaPincode(areaPincode);
		areaVO.setAreaDescription(areaDescription);
		
		AreaDAO areaDAO = new AreaDAO();
		areaDAO.insertArea(areaVO);
		response.sendRedirect("admin/addArea.jsp");	
	}
	protected void searchArea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		
		AreaVO areaVO = new AreaVO();		
		
		AreaDAO areaDAO = new AreaDAO();
		List ls = areaDAO.searchArea(areaVO);
		session.setAttribute("ls", ls);
		response.sendRedirect("admin/searchArea.jsp");
	}
	protected void editArea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			int areaId = Integer.parseInt(request.getParameter("areaId"));
			HttpSession session = request.getSession();
			AreaVO areaVO = new AreaVO();
			areaVO.setAreaId(areaId);
			
			AreaDAO areaDAO  = new AreaDAO();
			List editls = areaDAO.editArea(areaVO);
			session.setAttribute("editls", editls);
			response.sendRedirect("admin/editArea.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	protected void updateArea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String areaName = request.getParameter("areaName");
		int areaPincode = Integer.parseInt(request.getParameter("areaPincode"));
		String areaDescription = request.getParameter("areaDescription");
		int areaId = Integer.parseInt(request.getParameter("areaId"));
		
		AreaVO areaVO = new AreaVO();
		areaVO.setAreaName(areaName);
		areaVO.setAreaPincode(areaPincode);
		areaVO.setAreaId(areaId);
		areaVO.setAreaDescription(areaDescription);
		
		AreaDAO areaDAO = new AreaDAO();
		areaDAO.Update(areaVO);
		searchArea(request, response);
	}
}		

