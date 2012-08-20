package com.sunil.app.action.command;

import java.util.List;

import com.sunil.app.model.Employee;

public class SampleCommand {
	private List<Employee> employees;

	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}

}
