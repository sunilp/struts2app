package com.sunil.app.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.sunil.app.model.Employee;

public class EmployeeRowMapper implements RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
EmployeeResultSetExtractor resultSetExtractor = new EmployeeResultSetExtractor();
return resultSetExtractor.extractData(rs);
	}

}
