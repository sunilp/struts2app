package com.sunil.app.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sunil.app.action.command.SampleCommand;
import com.sunil.app.model.Employee;
import com.sunil.app.service.SampleService;

public class SampleGridAction extends ActionSupport {
	
	private SampleCommand command = new SampleCommand();
	private SampleService service;
	/**
     * The action execution was successful. Show result
     * view to the end user.
     */
    public static final String SUCCESS = "success";

	//@Override
	public SampleCommand getModel() {
		if(command == null){
			return new SampleCommand();
		}else{
			return command;
		}
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

}
