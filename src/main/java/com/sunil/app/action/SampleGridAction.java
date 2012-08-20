package com.sunil.app.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;

import com.sunil.app.model.Employee;
import com.sunil.app.service.SampleService;


@ParentPackage(value = "samplePkg")

public class SampleGridAction extends BaseGridAction<Employee> implements SessionAware{
	
	private SampleService service;
    public static final String SUCCESS = "success";
    
    private List<Employee> modelList;

    public List<Employee> getModelList() {
		return modelList;
	}


	public void setModelList(List<Employee> modelList) {
		this.modelList = modelList;
	}


	private Map<String, Object> session;

    @Actions( {
        @Action(value = "/SampleGrid",className="sampleGridAction", results = {
          @Result(name = "success", type = "json")
        })
      })
	public String execute(){
		System.out.println("in Gid execute");
		List<Employee> employeeList;
		 int to = (rows * page);
		 int from = to - rows;
		 if(session.get("empList")==null){
			 employeeList = service.selectAll();
		 }else{
			 employeeList = (List<Employee>) session.get("empList");
		 }
		System.out.println("list:"+employeeList);
				records = employeeList.size();
		
		
		setModelList(employeeList);
		
		  total =(int) Math.ceil((double)records / (double)rows);

		return SUCCESS;
		
	}

	
	  public String getJSON() throws Exception
	  {
	    return execute();
	  }
	
	 public void setService(SampleService service) {
		this.service = service;
	}


	@Override
	public void setSession(Map<String, Object> session) {
	this.session = session;
		
	}

}
