package com.sunil.app.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.sunil.app.dao.mapper.EmployeeRowMapper;
import com.sunil.app.model.Employee;

public class SampleDaoImpl implements SampleDao {

	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void create(String firstName, String lastName) {
		jdbcTemplate
				.update("INSERT INTO employee (id,name) values (nextval('employee_seq'),?",
						new Object[] { firstName + " " + lastName });

	}

	@Override
	public List<Employee> select(String firstname, String lastname) {
		return jdbcTemplate.query(
				"SELECT id , name FROM employee where name = ?",
				new Object[] { firstname + " " + lastname },
				new EmployeeRowMapper());
	}

	@Override
	public List<Employee> selectAll() {
		return jdbcTemplate.query(
				"SELECT id , name FROM employee",
				new EmployeeRowMapper());
	}

	@Override
	public void deleteAll() {
		jdbcTemplate
		.update("DELECT FROM employee");

	}

	@Override
	public void delete(String firstName, String lastName) {
		jdbcTemplate
		.update("DELECT FROM employee where name = ?", new Object[]{firstName + " " + lastName});

	}

}
