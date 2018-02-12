package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;




import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.AttachmentDAO;
import DAO.ComplaintDAO;
import DAO.PoliceStaffDAO;
import DAO.PoliceStationDAO;
import DAO.StaffComplaintDAO;
import DAO.UserAttachmentDAO;
import VO.AttachmentVO;
import VO.ComplaintVO;
import VO.LoginVO;
import VO.PoliceStaffVO;
import VO.PoliceStationVO;
import VO.StaffComplaintVO;
import VO.UserAttachmentVO;


/**
 * Servlet implementation class ComplaintController
 */
@WebServlet("/ComplaintController")
@MultipartConfig
public class ComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintController() {
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
		HttpSession session = request.getSession();
		if(flag!=null && flag.equals("searchComplaint"))
		{
			searchComplaint(request, response);
		}
		if (flag != null && flag.equals("replyComplaint")) 
		{
			replyComplaint(request, response);
		}
		if(flag!=null && flag.equals("loadPoliceStation"))
		{
			loadPoliceStation(request, response);
			response.sendRedirect("user/postComplaint.jsp");
			/*if(session.getAttribute("userID")!= null)
			{
				response.sendRedirect("user/postComplaint.jsp");
			}
			else
			{
				response.sendRedirect("user/login.jsp");
			}*/
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		System.out.println(flag);
		if(flag!=null && flag.equals("insertComplaint"))
		{
			System.out.println("inserted");
			insertComplaint(request, response);
		}
		if (flag != null && flag.equals("insertReply")) {
			insertReply(request, response);
		}
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
	protected void insertComplaint(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		HttpSession session = request.getSession();
		
		System.out.println("Insert Method call.........");
		
		String subject = request.getParameter("subject");
		String complaintDescription = request.getParameter("complaintDescription");
		int policeStationId = Integer.parseInt(request.getParameter("policeStationId"));
		int userID = (Integer)session.getAttribute("userID");
		int adminID	 = (Integer)session.getAttribute("adminID");
		
		PoliceStationVO policeStationVO = new PoliceStationVO();
		policeStationVO.setPoliceStationId(policeStationId);
		LoginVO loginVO = new LoginVO();
		LoginVO loginVO1 = new LoginVO();
		loginVO.setLoginId(userID);		
		loginVO1.setLoginId(adminID);
		
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setSubject(subject);
		complaintVO.setComplaintDescription(complaintDescription);
		complaintVO.setPoliceStationVO(policeStationVO);
		complaintVO.setFrom(loginVO);
		complaintVO.setTo(loginVO1);
		
		ComplaintDAO complaintDAO = new ComplaintDAO();
		complaintDAO.insertComplaint(complaintVO);	

		// uploadFile
				for (Part filePart : request.getParts()) 
				{	
					if (filePart.getSubmittedFileName() != null && !filePart.getSubmittedFileName().equals("")) 
					{
						UserAttachmentVO userAttachmentVO = new UserAttachmentVO();
						String fileName = filePart.getSubmittedFileName();

						String encryptFileName = encryptFileName(fileName);
						InputStream fileContent = filePart.getInputStream();

						System.out.println("filePart :: " + filePart);
						System.out.println("file Name :: " + fileName);
						System.out.println("File Content :: " + fileContent);

						byte[] buffer = new byte[fileContent.available()];
						fileContent.read(buffer);

						String filePath = getServletContext().getRealPath(request.getServletPath());

						int path = filePath.lastIndexOf('\\');
						String path1 = filePath.substring(0, path) + "\\userAttachment\\";

						// File targetFile = new File(finalPath);
						File targetEncryptFile = new File(path1 + encryptFileName);
						// OutputStream outStream = new FileOutputStream(targetFile);
						OutputStream outStream = new FileOutputStream(targetEncryptFile);
						outStream.write(buffer);
						String finalPath = path1 + encryptFileName;

						// photoVO.setPhotoPath(finalPath);
						System.out.println("File Output Path :: " + path1 + fileName);
						outStream.close();

						// photoVO.setPhotoPath(finalPath);
						// photoVO.setEncryptedFileName(encryptFileName);
						userAttachmentVO.setUserAttachmentFileName(encryptFileName);
						userAttachmentVO.setUserAttachmentPath(finalPath);
						userAttachmentVO.setEncryptedFileName(fileName);
						userAttachmentVO.setComplaintVO(complaintVO);

						UserAttachmentDAO userAttachmentDAO = new UserAttachmentDAO();
						userAttachmentDAO.insertUserAttachment(userAttachmentVO);
					}
				}
				response.sendRedirect("user/postComplaint.jsp");
	}
	private String encryptFileName(String fileName) 
	{
		Random r = new Random();
		String file[] = fileName.split("\\.");

		byte[] unencodedFile = file[0].getBytes();
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (Exception e) {
		}
		md.reset();
		md.update(unencodedFile);
		byte[] encodedFile = md.digest();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < encodedFile.length; i++) {
			if (((int) encodedFile[i] & 0xff) < 0x10) {
				buf.append("0");
			}
			buf.append(Long.toString((int) encodedFile[i] & 0xff, 16));
		}
		String encryptedFileName = (buf.toString()).concat(String.valueOf(r.nextInt()));
		return encryptedFileName + "." + file[1];
	}

	protected void searchComplaint(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		
		int adminID = (Integer)session.getAttribute("userID");
		
		LoginVO loginVO = new LoginVO();
		loginVO.setLoginId(adminID);		
		
		//ComplaintVO complaintVO = new ComplaintVO();		
		
		PoliceStaffDAO policeStaffDAO = new PoliceStaffDAO();
		List ls = policeStaffDAO.searchPoliceStaff1(loginVO);
		System.out.println("from PoliceStaffVO where loginVO = '"+loginVO.getLoginId()+"'");
		System.out.println("-----list-------"+ls.size());
		PoliceStaffVO policeStaffVO = (PoliceStaffVO)ls.get(0);
		int pid = policeStaffVO.getPoliceStationVO().getPoliceStationId();
		
		ComplaintDAO complaintDAO = new ComplaintDAO();
		List lsComplaint = complaintDAO.searchComplaint1(policeStaffVO);
		session.setAttribute("lsComplaint", lsComplaint);
		System.out.println("---------Complaint List---------"+lsComplaint.size());
		response.sendRedirect("admin/viewComplaint.jsp");
	}
	protected void replyComplaint(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			int complaintId = Integer.parseInt(request.getParameter("complaintId"));
			HttpSession session = request.getSession();
			
			ComplaintVO complaintVO = new ComplaintVO();
			complaintVO.setComplaintId(complaintId);

			ComplaintDAO complaintDAO = new ComplaintDAO();
			List replyls = complaintDAO.replyComplaint(complaintVO);

			session.setAttribute("replyls", replyls);
			response.sendRedirect("admin/replyComplaint.jsp");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	protected void insertReply(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		String subject = request.getParameter("subject");
		String complaintDescription = request.getParameter("complaintDescription");
		String reply = request.getParameter("reply");
		int complaintId = Integer.parseInt(request.getParameter("complaintId"));
		int toUserID = Integer.parseInt(request.getParameter("toUserID"));

		HttpSession session = request.getSession();

	//	int userID = (Integer)session.getAttribute("userID");
		int adminID = (Integer)session.getAttribute("adminID");
		
		LoginVO loginVO = new LoginVO();
		LoginVO loginVO1 = new LoginVO();
		loginVO.setLoginId(adminID);		
		loginVO1.setLoginId(toUserID);
		
		ComplaintVO complaintVO = new ComplaintVO();

		complaintVO.setSubject(subject);
		complaintVO.setComplaintDescription(complaintDescription);
		complaintVO.setComplaintId(complaintId);
		complaintVO.setReply(reply);
		complaintVO.setFrom(loginVO);
		complaintVO.setTo(loginVO1);
		
		ComplaintDAO complaintDAO = new ComplaintDAO();
		complaintDAO.insertReply(complaintVO);
		response.sendRedirect("admin/viewComplaint.jsp");
	}
}