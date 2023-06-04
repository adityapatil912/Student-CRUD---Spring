package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.StudentDAO;
import com.model.Student;

@Controller
public class StudentController {

	@Autowired
	private StudentDAO dao;

	@RequestMapping("/open")
	public String openForm(Model model) {
		model.addAttribute("stud", new Student());
		return "register";
	}

	@RequestMapping("/save")
	public String registerStudent(@ModelAttribute("stud") Student student) {
		dao.saveStudent(student);
		return "redirect:/read";
	}

	@RequestMapping("/delete")
	public String deleteStudentUrl(Student student) {
	    System.out.println("=====> " + student.getId());
	    dao.deleteStudent(student);
	    return "redirect:/read";
	}
	@RequestMapping("/update")
	public String updateStudentUrl(@ModelAttribute("stud") Student student) {
	    dao.updateStudent(student);
	    return "redirect:/read";
	}

	@RequestMapping("/read")
	public String readData(Model model) {
		
		List<Student> list = dao.getAllStudentById();
		
		model.addAttribute("list",list);
		return "display";
		
	}
	@RequestMapping("/updateform")
	public String updateForm(@RequestParam("id")int id, Model model) {
	    Student stud = dao.getStudentById(id);
	    model.addAttribute("stud", stud);
	    return "updateform";
	}


}
