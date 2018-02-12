package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;





import VO.AreaVO;
import VO.PoliceStaffVO;
import VO.PoliceStationVO;

public class PoliceStationDAO {
	public void insertPoliceStation(PoliceStationVO policeStationVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting police Station Record");
			
			session.save(policeStationVO);
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
	public List searchPoliceStation(PoliceStationVO policeStationVO)
	{
		List lsPoliceStation = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			System.out.println("Searching Police Station Record");
			
			Query q = session.createQuery("from PoliceStationVO");
			lsPoliceStation = q.list();
			System.out.println("Done");
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return lsPoliceStation;
	}
	
	
	public List editPoliceStation(PoliceStationVO policeStationVO)
	{
		try
		{
			List editls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from PoliceStationVO where policeStationId='"+policeStationVO.getPoliceStationId()+"'");
			editls = q.list();
			
			tr.commit();
			System.out.println("Done");
			return editls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	
	public void Update(PoliceStationVO policeStationVO)
	{
		try
		{
			List updatels = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			session.saveOrUpdate(policeStationVO);
			
			tr.commit();
			System.out.println("Done");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
}
}