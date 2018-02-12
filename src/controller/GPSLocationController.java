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
import DAO.valueDAO;
import VO.PoliceStationVO;
import VO.valueVO;

/**
 * Servlet implementation class GPSLocationController
 */
@WebServlet("/GPSLocationController")
public class GPSLocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GPSLocationController() {
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
		// TODO Auto-generated method stub
		if(flag!=null && flag.equals("searchLocation"))
		{
			searchLocation(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}
	protected void searchLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
			
		valueDAO valueDAO = new valueDAO();
		List lsValue = valueDAO.searchLocation();
		
		session.setAttribute("lsValue", lsValue);
		
		response.sendRedirect("admin/loadJSON.jsp");
	}
}
