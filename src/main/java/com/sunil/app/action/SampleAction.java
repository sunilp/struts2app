package com.sunil.app.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sunil.app.action.command.SampleCommand;
import com.sunil.app.model.Employee;
import com.sunil.app.service.SampleService;

public class SampleAction extends ActionSupport{
	
	private SampleCommand command = new SampleCommand();
	private SampleService service;
    public static final String SUCCESS = "success";

	public SampleCommand getModel() {
			return command;
	}
	
	public String execute() throws Exception{
		System.out.println("in execute");
		List<Employee> employeeList = service.selectAll();
		System.out.println("list:"+employeeList);
		command.setEmployees(employeeList);
		System.out.println(getModel());
		return SUCCESS;
		
	}

	public void setService(SampleService service) {
		this.service = service;
	}
	
	public List<Employee> getModelList() throws Exception{
		execute();
		return command.getEmployees();
	}


}
