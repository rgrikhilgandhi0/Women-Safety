package controller;

import java.io.IOException;





import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.cglib.core.Local;
import DAO.AreaDAO;
import DAO.AssignLocationDAO;
import DAO.LocationDAO;
import DAO.PoliceStationDAO;
import DAO.PostDAO;
import VO.AreaVO;
import VO.AssignLocationVO;
import VO.LocationVO;
import VO.PoliceStationVO;
import VO.PostVO;

/**
 * Servlet implementation class AssignLocationController
 */
@WebServlet("/AssignLocationController")
public class AssignLocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignLocationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("searchAssignLocation"))
		{
			searchAssignLocation(request, response);
		}
		else if(flag!=null && flag.equals("loadAssignLocation"))
		{
			loadAssignLocation(request, response);
		}
		if(flag!=null && flag.equals("editAssignLocation"))
		{
			editAssignLocation(request, response);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
         
		String flag = request.getParameter("flag");
		
		if(flag!=null && flag.equals("insertAssignLocation"))
		{
			insertAssignLocation(request, response);
		}
		if(flag!=null && flag.equals("updateAssignLocation"))
		{
			updateAssignLocation(request, response);
		}
		
	}

		
		protected void insertAssignLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
        int policeStationId = Integer.parseInt(request.getParameter("policeStationId"));
        int locationId = Integer.parseInt(request.getParameter("locationId"));
		
		AssignLocationVO assignLocationVO=new AssignLocationVO();
		
		PoliceStationVO policeStationVO=new PoliceStationVO();
		policeStationVO.setPoliceStationId(policeStationId);
		assignLocationVO.setPoliceStationVO(policeStationVO);
		
		LocationVO locationVO=new LocationVO();
		locationVO.setLocationId(locationId);
		assignLocationVO.setLocationVO(locationVO);
		
		
		AssignLocationDAO assignLocationDAO=new AssignLocationDAO();
		assignLocationDAO.insertAssignLocation(assignLocationVO);
		response.sendRedirect("admin/addAssignLocation.jsp");
	}
		protected void searchAssignLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			System.out.println("search all assignlocation. ");
		HttpSession session = request.getSession();
		
		//AssignLocationVO assignLocationVO = new AssignLocationVO();		

		
		AssignLocationDAO assignLocationDAO = new AssignLocationDAO();
		List ls = assignLocationDAO.searchAssignLocation();
		
		session.setAttribute("ls123", ls);
		System.out.println("ls ni sise......... "+ls.size());
		response.sendRedirect("admin/searchAssignLocation.jsp");
}
		protected void loadAssignLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
		HttpSession session = request.getSession();
		
	    PoliceStationVO policeStationVO = new PoliceStationVO();
		LocationVO locationVO = new LocationVO();
		
		PoliceStationDAO policeStationDAO = new PoliceStationDAO();
		List lsPoliceStation = policeStationDAO.searchPoliceStation(policeStationVO);
		session.setAttribute("lsPoliceStation", lsPoliceStation);

		LocationDAO locationDAO = new LocationDAO();
		List lsLocation = locationDAO.searchLocation(locationVO);
		session.setAttribute("lsLocation", lsLocation);

		response.sendRedirect("admin/addAssignLocation.jsp");
		}
		
		protected void editAssignLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			try
			{
				int assignLocationId = Integer.parseInt(request.getParameter("assignLocationId"));
				System.out.println("assign id"+ assignLocationId +"--------------");
				HttpSession session = request.getSession();
				AssignLocationVO assignLocationVO = new AssignLocationVO();
				assignLocationVO.setAssignLocationId(assignLocationId);
				
				AssignLocationDAO assignLocationDAO  = new AssignLocationDAO();
				List editls = assignLocationDAO.editAssignLocation(assignLocationVO);
				session.setAttribute("editls", editls);
				
				PoliceStationDAO policeStationDAO=new PoliceStationDAO();
				List lsPoliceStation = policeStationDAO.searchPoliceStation(null);
				session.setAttribute("lsPoliceStation", lsPoliceStation);
 
				LocationDAO locationDAO = new LocationDAO();
				List lsLocation = locationDAO.searchLocation(null);
				session.setAttribute("lsLocation", lsLocation);

				response.sendRedirect("admin/editAssignLocation.jsp");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
}
		protected void updateAssignLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			int assignLocationId = Integer.parseInt(request.getParameter("assignLocationId"));
			int policeStationId = Integer.parseInt(request.getParameter("policeStation"));
			int locationId = Integer.parseInt(request.getParameter("location"));

			System.out.println("controller assignLocationId  >>  "+assignLocationId);
			System.out.println("controller assignLocationId  >>  "+policeStationId);
			System.out.println("controller assignLocationId  >>  "+locationId);

			PoliceStationVO policeStationVO = new PoliceStationVO();
			policeStationVO.setPoliceStationId(policeStationId);
			
			LocationVO locationVO = new LocationVO();
			locationVO.setLocationId(locationId);
		
			AssignLocationVO assignLocationVO = new AssignLocationVO();
			assignLocationVO.setAssignLocationId(assignLocationId);
			assignLocationVO.setLocationVO(locationVO);
			assignLocationVO.setPoliceStationVO(policeStationVO);
			
			AssignLocationDAO assignLocationDAO = new AssignLocationDAO();
		    assignLocationDAO.Update(assignLocationVO);
			searchAssignLocation(request, response);
		}
}