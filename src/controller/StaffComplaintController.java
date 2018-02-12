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

import DAO.AreaDAO;
import DAO.AttachmentDAO;
import DAO.PhotoDAO;
import DAO.StaffComplaintDAO;
import VO.AreaVO;
import VO.AttachmentVO;
import VO.LoginVO;
import VO.StaffComplaintVO;

/**
 * Servlet implementation class StaffComplaintController
 */
@WebServlet("/StaffComplaintController")
@MultipartConfig
public class StaffComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StaffComplaintController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");

		if (flag != null && flag.equals("searchStaffComplaint")) 
		{
			searchStaffComplaint(request, response);
		}
		if (flag != null && flag.equals("replyStaffComplaint")) 
		{
			replyStaffComplaint(request, response);
		}
		if (flag != null && flag.equals("sentStaffComplaint")) 
		{
			sentStaffComplaint(request, response);
		}
		if (flag != null && flag.equals("insertReply")) 
		{
			insertReply(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if (flag != null && flag.equals("insertStaffComplaint")) {
			insertStaffComplaint(request, response);
		}
		if (flag != null && flag.equals("insertReply")) 
		{
			insertReply(request, response);
		}
		if (flag != null && flag.equals("sentStaffComplaint")) {
			sentStaffComplaint(request, response);
		}
	}

	protected void insertStaffComplaint(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();

		String subject = request.getParameter("subject");
		String complaintDescription = request.getParameter("complaintDescription");

		StaffComplaintVO staffComplaintVO = new StaffComplaintVO();

		int userID = (Integer)session.getAttribute("userID");
		int adminID = (Integer)session.getAttribute("adminID");
		
		LoginVO loginVO = new LoginVO();
		LoginVO loginVO1 = new LoginVO();
		loginVO.setLoginId(userID);		
		loginVO1.setLoginId(adminID);
		
		staffComplaintVO.setSubject(subject);
		staffComplaintVO.setComplaintDescription(complaintDescription);
		staffComplaintVO.setFrom(loginVO);
		staffComplaintVO.setTo(loginVO1);

		StaffComplaintDAO staffComplaintDAO = new StaffComplaintDAO();
		staffComplaintDAO.insertStaffComplaint(staffComplaintVO);
		response.sendRedirect("admin/addStaffComplaint.jsp");

		// uploadFile
		for (Part filePart : request.getParts()) 
		{
			
			
			if (filePart.getSubmittedFileName() != null && !filePart.getSubmittedFileName().equals("")) 
			{
				AttachmentVO attachmentVO = new AttachmentVO();
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
				String path1 = filePath.substring(0, path) + "\\StaffAttachment\\";

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
				attachmentVO.setAttachmentFileName(encryptFileName);
				attachmentVO.setAttachmentPath(finalPath);
				attachmentVO.setEncryptedFileName(fileName);
				attachmentVO.setStaffComplaintVO(staffComplaintVO);

				AttachmentDAO attachmentDAO = new AttachmentDAO();
				attachmentDAO.insertAttachment(attachmentVO);
			}
		}
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

	protected void searchStaffComplaint(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();

		StaffComplaintVO staffComplaintVO = new StaffComplaintVO();
		
		StaffComplaintDAO staffComplaintDAO = new StaffComplaintDAO();
		List searchls = staffComplaintDAO.searchStaffComplaint(staffComplaintVO);
		System.out.println("<<---Search Staff Complaint List!!----->>"+searchls.size());
		session.setAttribute("searchls", searchls);
		response.sendRedirect("admin/searchStaffComplaint.jsp");	
	}

	protected void replyStaffComplaint(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			System.out.println("Controller :: Replystaffcontroller :: Ahiya sudhi pohchwu joiye!!");
			int staffComplaintId = Integer.parseInt(request.getParameter("staffComplaintId"));
			HttpSession session = request.getSession();
			StaffComplaintVO staffComplaintVO = new StaffComplaintVO();
			staffComplaintVO.setStaffComplaintId(staffComplaintId);

			AttachmentVO attachmentVO = new AttachmentVO();
			attachmentVO.setStaffComplaintVO(staffComplaintVO);
			
			StaffComplaintDAO staffComplaintDAO = new StaffComplaintDAO();
			List replyls = staffComplaintDAO.replyStaffComplaint(staffComplaintVO);
			
			AttachmentDAO attachmentDAO = new AttachmentDAO();
			//------ Started by Yash Bro!!!!!!!!!-----------------------------------
			List attachmentls = attachmentDAO.searchAttachment(attachmentVO);
			session.setAttribute("replyls", replyls);
			
			System.out.println("Attachment LIST size :::::::::::: "+attachmentls.size());
			
			session.setAttribute("attachmentList", attachmentls);
			
			System.out.println("--------------------------------------?"+attachmentVO.getStaffComplaintVO().getStaffComplaintId());
			response.sendRedirect("admin/replyStaffComplaint.jsp");
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
		int staffComplaintId = Integer.parseInt(request.getParameter("staffComplaintId"));
/*		int toUserID = Integer.parseInt(request.getParameter("toUserID"));*/

		HttpSession session = request.getSession();

	//	int userID = (Integer)session.getAttribute("userID");
		int adminID = (Integer)session.getAttribute("adminID");
		
		LoginVO loginVO = new LoginVO();
		LoginVO loginVO1 = new LoginVO();
		loginVO.setLoginId(adminID);		
	/*	loginVO1.setLoginId(toUserID);*/
		
		StaffComplaintVO staffComplaintVO = new StaffComplaintVO();

		staffComplaintVO.setSubject(subject);
		staffComplaintVO.setComplaintDescription(complaintDescription);
		staffComplaintVO.setStaffComplaintId(staffComplaintId);
		staffComplaintVO.setReply(reply);
		staffComplaintVO.setFrom(loginVO);
		staffComplaintVO.setTo(loginVO1);
		
		StaffComplaintDAO staffComplaintDAO = new StaffComplaintDAO();
		staffComplaintDAO.insertReply(staffComplaintVO);
		response.sendRedirect("admin/searchStaffComplaint.jsp");
	}
	protected void sentStaffComplaint(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{		
			HttpSession session = request.getSession();

			StaffComplaintVO staffComplaintVO = new StaffComplaintVO();
			
			StaffComplaintDAO staffComplaintDAO = new StaffComplaintDAO();
			List sentls = staffComplaintDAO.searchSentStaffComplaint(staffComplaintVO);
			session.setAttribute("sentls", sentls);
			response.sendRedirect("admin/sentStaffComplaint.jsp");
			//replyStaffComplaint(request,response);
	}
}
