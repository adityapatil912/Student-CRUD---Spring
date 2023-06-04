package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.model.Student;

public class StudentRowMapper implements RowMapper<Student> {

	@Override
	public Student mapRow(ResultSet rs, int arg1) throws SQLException {

		Student stud = new Student();
		stud.setId(rs.getInt(1));
		stud.setName(rs.getString(2));
		stud.setMarks(rs.getDouble(3));
		
		return stud;
	}
	
	

}
