package DAO;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.AttachmentVO;
import VO.UserAttachmentVO;

public class UserAttachmentDAO 
{
	public void insertUserAttachment(UserAttachmentVO userAttachmentVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			System.out.println("Inserting User Attachment Record");

			session.save(userAttachmentVO);
			
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
