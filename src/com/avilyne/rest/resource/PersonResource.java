package com.avilyne.rest.resource;

import javax.ws.rs.Path; 
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.core.Request;




import com.avilyne.rest.model.Person;





import DAO.LoginDAO;
import DAO.RegistrationDAO;
import VO.LoginVO;
import VO.RegistrationVO;

@Path("/person")
public class PersonResource {
	private final static String FULLNAME = "fullName";
	private final static String ADDRESS = "address";
	private final static String EMAILID = "emailId";
	private final static String PASSWORD = "password";
	private final static String PHONE = "phone";

	private Person person = new Person(1, "FullName", "Address",54);


	// The @Context annotation allows us to have certain contextual objects
	// injected into this class.
	// UriInfo object allows us to get URI information (no kidding).
	@Context
	UriInfo uriInfo;
	// Another "injected" object. This allows us to use the information that's
	// part of any incoming request.
	// We could, for example, get header information, or the requestor's address.

	@Context
	Request request;
	// Basic "is the service running" test
	@GET@Produces(MediaType.TEXT_PLAIN)
	public String respondAsReady() {
		return "Ready to use Service Yash & Rikhil....!";
	}
	@GET
	@Path("/sample")
	@Produces(MediaType.APPLICATION_JSON)
	public Person getSamplePerson() {

		System.out.println("Returning Name & Address person: " + person.getFullName() + " " + person.getAddress());
		return person;
	}

	// Use data from the client source to create a new Person object, returned in JSON format.  
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	public Person postPerson(
			MultivaluedMap<String, String> personParams
			) {
		System.out.println("Hello");
		String fullName = personParams.getFirst(FULLNAME);
		String address = personParams.getFirst(ADDRESS);
		String emailId = personParams.getFirst(EMAILID);
		String password = personParams.getFirst(PASSWORD);
		int phone = Integer.parseInt(personParams.getFirst(PHONE));


		LoginVO loginVO = new LoginVO();
		loginVO.setEmailId(emailId);
		loginVO.setPassword(password);
		
		LoginDAO loginDAO = new LoginDAO();
		loginDAO.insertLogin(loginVO);

		RegistrationVO registrationVO = new RegistrationVO();
		registrationVO.setFullName(fullName);
		registrationVO.setAddress(address);
		registrationVO.setPhone(phone);
		registrationVO.setLoginVO(loginVO);
		
		RegistrationDAO registrationDAO=new RegistrationDAO();
		registrationDAO.insertRegistration(registrationVO);
		System.out.println("Storing posted " + fullName + " " + address + "  " + emailId+ "  " + password+ "  " + phone);


		person.setFullName(fullName);
		person.setAddress(address);
		person.setPhone(phone);

		System.out.println("person info: " + person.getFullName() + " " + person.getAddress() + " " + person.getPhone());

		return person;
	}
}