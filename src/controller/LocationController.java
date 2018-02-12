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
import DAO.LocationDAO;
import VO.AreaVO;
import VO.LocationVO;

/**
 * Servlet implementation class LocationController
 */
@WebServlet("/LocationController")
public class LocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LocationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("searchLocation"))
		{
			searchLocation(request, response);
		}
		if(flag!=null && flag.equals("editLocation"))
		{
			editLocation(request, response);
		}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag = request.getParameter("flag");
		if(flag != null && flag.equals("insertLocation"))
		{
			insertLocation(request,response);
		}
		if(flag!=null && flag.equals("updateLocation"))
		{
			updateLocation(request, response);
		}

	}


 protected void insertLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	 
	 String locationName = request.getParameter("locationName");
	 String locationDescription = request.getParameter("locationDescription");
	 
	 LocationVO locationVO = new LocationVO();
	 locationVO.setLocationName(locationName);
	 locationVO.setLocationDescription(locationDescription);
	 
	 LocationDAO locationDAO = new LocationDAO();
	 locationDAO.insertLocation(locationVO);
	 response.sendRedirect("admin/addLocation.jsp");
 }
 
 	protected void searchLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	HttpSession session = request.getSession();
	
	LocationVO locationVO = new LocationVO();		
	
	LocationDAO locationDAO = new LocationDAO();
	List lsLocation = locationDAO.searchLocation(locationVO);
	session.setAttribute("lsLocation", lsLocation);
	response.sendRedirect("admin/searchLocation.jsp");
	}
 	
 	protected void editLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			int locationId = Integer.parseInt(request.getParameter("locationId"));
			HttpSession session = request.getSession();
			LocationVO locationVO = new LocationVO();
			locationVO.setLocationId(locationId);
			
			LocationDAO locationDAO  = new LocationDAO();
			List editls = locationDAO.editLocation(locationVO);
			session.setAttribute("editls", editls);
			response.sendRedirect("admin/editLocation.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
 	
 	protected void updateLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String locationName = request.getParameter("locationName");
		
		String locationDescription = request.getParameter("locationDescription");
		int locationId = Integer.parseInt(request.getParameter("locationId"));
		
		LocationVO locationVO = new LocationVO();
		locationVO.setLocationName(locationName);
		locationVO.setLocationId(locationId);
		locationVO.setLocationDescription(locationDescription);
		
		LocationDAO locationDAO = new LocationDAO();
		locationDAO.Update(locationVO);
		searchLocation(request, response);
	}

}

