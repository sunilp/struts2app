package com.sunil.app.service;

import java.util.List;

import com.sunil.app.dao.SampleDao;
import com.sunil.app.model.Employee;

public class SampleServiceImpl implements SampleService {
	
	private SampleDao sampleDao;

	public void setSampleDao(SampleDao sampleDao) {
		this.sampleDao = sampleDao;
	}

	@Override
	public void create(String firstName, String lastName) {
		sampleDao.create(firstName, lastName);
	}

	@Override
	public List<Employee> select(String firstname, String lastname) {
		
		return sampleDao.select(firstname, lastname);
	}

	@Override
	public List<Employee> selectAll() {
		return sampleDao.selectAll();
	}

	@Override
	public void delete(String firstName, String lastName) {
		sampleDao.delete(firstName, lastName);
	}

}
