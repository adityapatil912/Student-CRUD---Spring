package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Student;

public class StudentDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int saveStudent(Student student) {

		String sql = "insert into student values('" + student.getId() + "','" + student.getName() + "','"
				+ student.getMarks() + "')";

		return jdbcTemplate.update(sql);
	}

	public int deleteStudent(Student student) {

		String sql = "delete from student where id =" + student.getId();

		return jdbcTemplate.update(sql);

	}

	public int updateStudent(Student student) {

		String sql = "update student set name='" + student.getName() + "', " + "marks='" + student.getMarks()
				+ "' where id='" + student.getId() + "'";

		return jdbcTemplate.update(sql);
	}

	public Student getStudentById(int id) {

		String sql = "select * from student where id=" + id;

		Student student = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Student>(Student.class));

		return student;
	}
	
	public List<Student> getAllStudentById(){
		
		return jdbcTemplate.query("select * from student", new StudentRowMapper());
	}

}
