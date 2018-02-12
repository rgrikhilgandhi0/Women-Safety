package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.AreaVO;
import VO.AttachmentVO;

public class AttachmentDAO 
{
	public void insertAttachment(AttachmentVO attachmentVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			System.out.println("Inserting Attachment Record");

			session.save(attachmentVO);
			
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
	public List searchAttachment(AttachmentVO attachmentVO)
	{
		List attachmentls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Attachment Record");
			System.out.println("Query :::::: from AttachmentVO where staffComplaintVO = '"+attachmentVO.getStaffComplaintVO().getStaffComplaintId()+"'");
			Query q = session.createQuery("from AttachmentVO where staffComplaintVO ="+attachmentVO.getStaffComplaintVO().getStaffComplaintId());
			attachmentls = q.list();
			tr.commit();
			System.out.println("search attachments :: List size :: "+attachmentls.size());
			session.flush();
			session.close();
			return attachmentls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
}
