package com.greatlearning.studentregistration.controller;

import java.security.Principal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.greatlearning.studentregistration.entity.Students;
import com.greatlearning.studentregistration.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/add")
	public String add(Model model) {

		// create model attribute to bind form data
		Students students = new Students();

		model.addAttribute("Students", students);

		return "Student-Form";
	}

	@RequestMapping("/list")
	public String listStudents(Model model) {

		List<Students> students = studentService.findAll();

		// add to the spring model
		model.addAttribute("Students", students);

		return "Student-List";
	}

	@RequestMapping("/view")
	public String view(@RequestParam("studentId") int id, Model model) {

		Students students = studentService.findById(id);

		model.addAttribute("Students", students);

		// send over to our page
		return "view-students";
	}

	@RequestMapping("/update")
	public String update(@RequestParam("studentId") int id, Model model) {

		Students students = studentService.findById(id);

		model.addAttribute("Students", students);

		// send over to our form
		return "Student-Form";
	}

	@PostMapping("/save")
	public String saveStudents(@RequestParam("id") int id, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("course") String course,
			@RequestParam("country") String country) {

		System.out.println(id);
		Students students;
		if (id != 0) {
			students = studentService.findById(id);
			students.setFirstName(firstName);
			students.setLastName(lastName);
			students.setCourse(course);
			students.setCountry(country);
		} else
			students = new Students(firstName, lastName, course, country);

		studentService.save(students);

		// use a redirect to prevent duplicate submissions
		return "redirect:/students/list";

	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("studentId") int id) {

		studentService.deleteById(id);

		return "redirect:/students/list";
	}

	@RequestMapping("/search")
	public String search(@RequestParam("firstName") String firstName, Model model) {

		if (firstName.trim().isEmpty()) {
			return "redirect:/students/list";
		}
		// else, search by first name
		List<Students> students = studentService.searchBy(firstName);

		// add to the spring model
		model.addAttribute("Students", students);

		return "Student-List";
	}

	@RequestMapping("/403")
	public ModelAndView accessDenied(Principal user) {
		ModelAndView modelAndView = new ModelAndView();

		if (user != null) {
			modelAndView.addObject("msg", "Hi " + user.getName() + ", you don't have permission to access this page!");
		} else {
			modelAndView.addObject("msg", "You don't have permission to access this page!");
		}
		modelAndView.setViewName("403");
		return modelAndView;
	}

}
