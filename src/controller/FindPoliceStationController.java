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
 * Servlet implementation class FindPoliceStationController
 */
@WebServlet("/FindPoliceStationController")
public class FindPoliceStationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPoliceStationController() {
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
		if(flag!=null && flag.equals("loadPoliceStation"))
		{
			loadPoliceStation(request, response);
			response.sendRedirect("user/findYourPoliceStation.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}
	protected void loadPoliceStation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		HttpSession session = request.getSession();
		
		PoliceStationVO policeStationVO = new PoliceStationVO();
		
		PoliceStationDAO policeStationDAO = new PoliceStationDAO();
		List lsPoliceStation = policeStationDAO.searchPoliceStation(policeStationVO);
		session.setAttribute("lsPoliceStation", lsPoliceStation);
		System.out.println(lsPoliceStation.size()+"<<<............");
	}
}