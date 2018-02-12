package controller;

import java.io.File; 
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;










import org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext;

import DAO.AreaDAO;
import DAO.LoginDAO;
import DAO.PhotoDAO;
import DAO.RegistrationDAO;
import VO.AreaVO;
import VO.LoginVO;
import VO.PhotoVO;
import VO.RegistrationVO;

@WebServlet("/RegistrationController")
@MultipartConfig

public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegistrationController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag = request.getParameter("flag");
		System.out.println("<<flag>> :: "+flag);		
		if(flag!=null && flag.equals("insertRegistration"))
		{
			insertRegistration(request, response);
		}
	}
	protected void insertRegistration(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		
		System.out.println("<<inside insertRegistration>>");
		
		String fullName = request.getParameter("fullName");
/*		String gender = request.getParameter("gender");*/
		String address = request.getParameter("address");		
		/*String birthDay = request.getParameter("birthDay");*/
		String emailId = request.getParameter("emailId");
		String password = request.getParameter("password");
		int phone = Integer.parseInt(request.getParameter("phone"));
		
		LoginVO loginVO = new LoginVO();
		loginVO.setEmailId(emailId);
		loginVO.setPassword(password);
		loginVO.setUserType("User");
		
		PhotoVO photoVO = new PhotoVO();
		
		LoginDAO loginDAO = new LoginDAO();
		loginDAO.insertLogin(loginVO);

		RegistrationVO registrationVO = new RegistrationVO();
		registrationVO.setFullName(fullName);
		/*registrationVO.setGender(gender);*/
		registrationVO.setAddress(address);
		/*registrationVO.setBirthDay(birthDay);*/
		registrationVO.setPhone(phone);
		registrationVO.setLoginVO(loginVO);

		
//uploadFile
		for(Part filePart : request.getParts()){
			if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals("")){
				String fileName = filePart. getSubmittedFileName();
				
				String encryptFileName = encryptFileName(fileName);
				InputStream fileContent = filePart.getInputStream();

				System.out.println("filePart :: "+filePart);
				System.out.println("file Name :: "+fileName);
				System.out.println("File Content :: "+fileContent);

				byte[] buffer = new byte[fileContent.available()];
				fileContent.read(buffer);

				String filePath = getServletContext().getRealPath(request.getServletPath());

				int path = filePath.lastIndexOf('\\');
				String path1= filePath.substring(0, path) +"\\photo\\";
				
	//			File targetFile = new File(finalPath);
				File targetEncryptFile = new File(path1+encryptFileName);
//				OutputStream outStream = new FileOutputStream(targetFile);
				OutputStream outStream = new FileOutputStream(targetEncryptFile);
				outStream.write(buffer);
				String finalPath = path1+encryptFileName;
				
//				photoVO.setPhotoPath(finalPath);
				System.out.println("File Output Path :: "+path1+fileName);
				outStream.close();

				photoVO.setPhotoPath(finalPath);
				photoVO.setEncryptedFileName(encryptFileName);
			}
		}
		

		PhotoDAO photoDAO = new PhotoDAO();
		photoDAO.insertPhoto(photoVO);
		System.out.println("----1.-----insert Registration Record------------");
		registrationVO.setPhotoVO(photoVO);
		RegistrationDAO registrationDAO = new RegistrationDAO();
		registrationDAO.insertRegistration(registrationVO);
		System.out.println("----2.-----insert Registration Record------------");
		response.sendRedirect("user/login.jsp");
	}
	private String encryptFileName(String fileName)
	{ 	
		   Random r = new Random();
		   String file[] = fileName.split("\\.");
		  
		   byte[] unencodedFile = file[0].getBytes();
		   MessageDigest md = null;
		   try {
		   md = MessageDigest.getInstance("MD5");
		   } catch (Exception e) {}
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

		   String encryptedFileName=(buf.toString()).concat(String.valueOf(r.nextInt()));    
		   return encryptedFileName+"."+file[1];
	   }
	
}