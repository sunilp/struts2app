package com.sunil.app.dao;

import java.util.List;

import com.sunil.app.model.Employee;

public interface SampleDao {


	  void create(String firstName, String lastName);

	  List<Employee> select(String firstname, String lastname);

	  List<Employee> selectAll();

	  void deleteAll();

	  void delete(String firstName, String lastName);
	
}
