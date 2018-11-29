package com.finnetwork.controllers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.finnetwork.models.APP_Link;
import com.finnetwork.models.bubble_graph;
import com.finnetwork.persistence.hibernate_util;


public class bubble_graph_controller {
	public List<bubble_graph>  get_bubble_given_id(int id) {
	
		
		Session session = hibernate_util.getSession();
		 Transaction tx=session.beginTransaction();

		String hql = "SELECT text,size,group FROM bubble_graph";
		Query query = session.createQuery(hql);
		List results = query.list();
		System.out.println(results.get(0));
		 tx.commit();
		 return results;
	}
}
