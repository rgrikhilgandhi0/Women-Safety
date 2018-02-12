package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.AreaVO;
import VO.AssignLocationVO;
import VO.PostVO;

public class AssignLocationDAO {

	public void insertAssignLocation(AssignLocationVO assignLocationVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Location Record");
			session.save(assignLocationVO);
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

	public List searchAssignLocation(AssignLocationVO assignLocationVO)
	{
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching AssignLocation Record");
			
			Query q = session.createQuery("from AssignLocationVO");
			ls = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return ls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
}
	public List editAssignLocation(AssignLocationVO assignLocationVO)
	{
		try
		{
			List editls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from AssignLocationVO where assignLocationId='"+assignLocationVO.getAssignLocationId()+"'");
			editls = q.list();
			
			tr.commit();
			System.out.println("Done" +"list size" + editls.size());
			return editls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
		public void Update(AssignLocationVO assignLocationVO)
		{
			try
			{
				List updatels = new ArrayList();
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				System.out.println("Editing Record");
				
				session.saveOrUpdate(assignLocationVO);
				
				tr.commit();
				System.out.println("Done in dao jalsa karo");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
}

		public List searchPoliceStation() {
			// TODO Auto-generated method stub
			try
			{
				List policestationls = new ArrayList();
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				System.out.println("Search Record");
				
				Query q = session.createQuery("from PoliceStationVO '");
				policestationls = q.list();
				
				tr.commit();
				System.out.println("Done" +"list size" + policestationls.size());
				return policestationls;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return null;
			}
		}
		public List searchLocation() {
			// TODO Auto-generated method stub
			try
			{
				List locationls = new ArrayList();
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				System.out.println("Search Record");
				
				Query q = session.createQuery("from LocationVO '");
				locationls = q.list();
				
				tr.commit();
				System.out.println("Done" +"list size" + locationls.size());
				return locationls;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return null;
			}
}

		public List searchAssignLocation() {
			// TODO Auto-generated method stub
			try
			{
				List assignlocationls = new ArrayList();
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				System.out.println("Search Record");
				
				Query q = session.createQuery("from AssignLocationVO ");
				assignlocationls = q.list();
				
				tr.commit();
				System.out.println("Done" +"list size" + assignlocationls.size());
				return assignlocationls;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return null;
			}
		}
}