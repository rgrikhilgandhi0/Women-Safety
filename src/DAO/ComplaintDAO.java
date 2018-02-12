package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.AreaVO;
import VO.ComplaintVO;
import VO.PoliceStaffVO;
import VO.StaffComplaintVO;


public class ComplaintDAO 
{
	public void insertComplaint(ComplaintVO complaintVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Complaint Record");
			
			session.save(complaintVO);
			tr.commit();
			System.out.println("Done");
			//session.flush();
		//	session.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public List searchComplaint(ComplaintVO complaintVO)
	{
		List lsComplaint = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Complaint's Record");
			
			Query q = session.createQuery("from ComplaintVO");
			lsComplaint = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return lsComplaint;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public List searchComplaint1(PoliceStaffVO policeStaffVO)
	{
		List lsComplaint = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Complaint's Record");
			
			Query q = session.createQuery("from ComplaintVO where policeStationVO="+policeStaffVO.getPoliceStationVO().getPoliceStationId());
			lsComplaint = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return lsComplaint;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public List replyComplaint(ComplaintVO complaintVO)
	{
		try
		{
			List replyls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from ComplaintVO where complaintId='"+complaintVO.getComplaintId()+"'");
			replyls = q.list();
			
			tr.commit();
			System.out.println("Done");
			return replyls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public void updateStaffComplaint(StaffComplaintVO staffComplaintVO)
	{
		try
		{
			List updatels = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			session.saveOrUpdate(staffComplaintVO);
			
			tr.commit();
			System.out.println("Done");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void insertReply(ComplaintVO complaintVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Reply Complaint Record");
			
			session.save(complaintVO);
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