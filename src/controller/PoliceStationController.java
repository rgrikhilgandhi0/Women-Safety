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
import DAO.PoliceStationDAO;
import VO.AreaVO;
import VO.PoliceStationVO;

/**
 * Servlet implementation class PoliceStationController
 */
@WebServlet("/PoliceStationController")
public class PoliceStationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PoliceStationController() {
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
		
		if(flag!=null && flag.equals("searchPoliceStation"))
		{
			searchPoliceStation(request, response);
		}
		else if(flag!=null && flag.equals("loadArea"))
		{
			loadArea(request, response);
			response.sendRedirect("admin/addPoliceStation.jsp");
		}
		else if(flag!=null && flag.equals("editPoliceStation"))
		{
			editPoliceStation(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		
		if(flag != null && flag.equals("insertPoliceStation"))
		{
			insertPoliceStation(request,response);
		}
		else if(flag != null && flag.equals("updatePoliceStation"))
		{
			updatePoliceStation(request,response);
		}		
	}
	
	protected void insertPoliceStation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String policeStationName = request.getParameter("policeStationName");
		String policeStationAddress = request.getParameter("policeStationAddress");
		String policeStationContactNo = request.getParameter("policeStationContactNo");
		String prisonDescription = request.getParameter("prisonDescription");
		int areaId = Integer.parseInt(request.getParameter("areaId"));
		String latitude = request.getParameter("latitude");
		String longitude = request.getParameter("longitude");
		
		PoliceStationVO policeStationVO = new PoliceStationVO();
		policeStationVO.setPoliceStationName(policeStationName);
		policeStationVO.setPoliceStationAddress(policeStationAddress);
		policeStationVO.setPoliceStationContactNo(policeStationContactNo);
		policeStationVO.setPrisonDescription(prisonDescription);
		policeStationVO.setLatitude(latitude);
		policeStationVO.setLongitude(longitude);
		
		AreaVO areaVO = new AreaVO();
		areaVO.setAreaId(areaId);
		policeStationVO.setAreaVO(areaVO);
		
		PoliceStationDAO policeStationDAO = new PoliceStationDAO();
		policeStationDAO.insertPoliceStation(policeStationVO);
		response.sendRedirect("admin/addPoliceStation.jsp");
		
	}
	protected void searchPoliceStation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		HttpSession session = request.getSession();
		
		PoliceStationVO policeStationVO = new PoliceStationVO();		
		
		PoliceStationDAO policeStationDAO = new PoliceStationDAO();
		List lsPoliceStation = policeStationDAO.searchPoliceStation(policeStationVO);
		session.setAttribute("lsPoliceStation", lsPoliceStation);
		response.sendRedirect("admin/searchPoliceStation.jsp");
	}

	protected void loadArea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		
		AreaVO areaVO = new AreaVO();
	
		AreaDAO areaDAO = new AreaDAO();
		List lsArea = areaDAO.searchArea(areaVO);
		session.setAttribute("lsArea", lsArea);	
	}
	protected void editPoliceStation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			int policeStationId = Integer.parseInt(request.getParameter("policeStationId"));
			HttpSession session = request.getSession();
			PoliceStationVO policeStationVO = new PoliceStationVO();
			policeStationVO.setPoliceStationId(policeStationId);
			
			PoliceStationDAO policeStationDAO  = new PoliceStationDAO();
			List editls = policeStationDAO.editPoliceStation(policeStationVO);
			session.setAttribute("editls",editls);
			
			loadArea(request,response);
			response.sendRedirect("admin/editPoliceStation.jsp");
			
	}
	protected void updatePoliceStation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int policeStationId = Integer.parseInt(request.getParameter("policeStationId"));
		String policeStationName = request.getParameter("policeStationName");
		String policeStationAddress = request.getParameter("policeStationAddress");
		/*String policeStationArea = request.getParameter("policeStationArea");*/
		String policeStationContactNo = request.getParameter("policeStationContactNo");
		String prisonDescription = request.getParameter("prisonDescription");
		int areaId = Integer.parseInt(request.getParameter("areaId"));
		
		
		PoliceStationVO policeStationVO = new PoliceStationVO();
		policeStationVO.setPoliceStationName(policeStationName);
		policeStationVO.setPoliceStationAddress(policeStationAddress);
		policeStationVO.setPoliceStationContactNo(policeStationContactNo);
		policeStationVO.setPrisonDescription(prisonDescription);
		policeStationVO.setPoliceStationId(policeStationId);
		
		AreaVO areaVO = new AreaVO();
		areaVO.setAreaId(areaId);
		policeStationVO.setAreaVO(areaVO);
		
		PoliceStationDAO policeStationDAO = new PoliceStationDAO();
		policeStationDAO.Update(policeStationVO);
		
		searchPoliceStation(request,response);
	}
	}