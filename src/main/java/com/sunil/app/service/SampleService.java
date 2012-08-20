package com.sunil.app.service;

import java.util.List;

import com.sunil.app.model.Employee;

public interface SampleService {

	  void create(String firstName, String lastName);

	  List<Employee> select(String firstname, String lastname);

	  List<Employee> selectAll();

	  void delete(String firstName, String lastName);
}
