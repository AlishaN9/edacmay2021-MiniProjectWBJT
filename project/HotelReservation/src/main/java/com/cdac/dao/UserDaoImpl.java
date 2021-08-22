package com.cdac.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.cdac.entity.users;

public class UserDaoImpl implements Userdao {


	public int insertUser(users users) {
		Configuration config = new Configuration().configure();
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();

		session.save(users);
		
		
		transaction.commit();
		session.close();
		return 0;
	}

	public boolean deleteUser(int id) {
		Configuration config = new Configuration().configure();
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		users users = session.get(users.class, id);

		session.delete(users);
	
		transaction.commit();
		session.close();
		return true;
	}

	public List<users> getAllUser() {
		Configuration config = new Configuration().configure();
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();

		
		Query query=session.createQuery("from users");
		List<users> listUser=query.getResultList();
		
		for(users users:listUser) {
			System.out.println(listUser);	
		}
		
		transaction.commit();
		session.close();

		return listUser;
	}

	public boolean updateUser(int getId) {
		Configuration config = new Configuration().configure();
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		
		users users = session.get(users.class, getId);

		session.update(users);
	
		transaction.commit();
		session.close();


		return true;
	}	
}