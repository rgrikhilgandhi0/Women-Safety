package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.PoliceStationDAO;
import VO.PoliceStationVO;

/**
 * Servlet implementation class StaffViewLocationController
 */
@WebServlet("/StaffViewLocationController")
public class StaffViewLocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffViewLocationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag = request.getParameter("flag");
		// TODO Auto-generated method stub
		if(flag!=null && flag.equals("searchStaffViewLocation"))
		{
			searchStaffViewLocation(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	protected void searchStaffViewLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		
		PoliceStationVO policeStationVO = new PoliceStationVO();		
		
		PoliceStationDAO policeStationDAO = new PoliceStationDAO();
		List lsPoliceStation = policeStationDAO.searchPoliceStation(policeStationVO);
		session.setAttribute("lsPoliceStation", lsPoliceStation);
		
		response.sendRedirect("admin/staffViewLocation.jsp");
	}

}
