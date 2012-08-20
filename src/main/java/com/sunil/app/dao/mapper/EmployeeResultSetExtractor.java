package com.sunil.app.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.sunil.app.model.Employee;

public class EmployeeResultSetExtractor implements ResultSetExtractor<Employee>{

	@Override
	public Employee extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		Employee employee = new Employee();
		employee.setId(rs.getInt("id"));
		employee.setName(rs.getString("name"));
		return employee;
	}

}
