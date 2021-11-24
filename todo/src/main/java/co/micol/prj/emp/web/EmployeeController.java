package com.company.employee;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	private static final Logger logger = 
			LoggerFactory.getLogger(EmployeeController.class);
	
	@Resource(name="employeeDao") 
	private EmployeeDao employeeDao;
	
	@RequestMapping(value="/employee/empSearch")
	public String selectSearch(@RequestParam Map<String,Object> map,
			                   Model model) {
		logger.debug("selectSearch ½ÇÇà");
		model.addAttribute("list",employeeDao.selectSearch(map));
		return "/employee/empSearch";
	}
	
	@RequestMapping(value="/employee/empDetail")
	public void empDetail(@RequestParam Map<String,Object> map,
			                   Model model) {
	}
	
	@RequestMapping(value="/employee/department")
	public Departments selectDepartment() {
		return employeeDao.selectDepartments().get(0);
	}	
	
//	@RequestMapping(value="/employee/departments")
//	public void selectDepartments(Model model) {
//		model.addAttribute("deptList", employeeDao.selectDepartments());
//	}	
	
	@RequestMapping(value="/employee/departments")
	public ModelAndView selectDepartments(Model model) {
		//model.addAttribute("deptList", employeeDao.selectDepartments());
		return new ModelAndView().addObject("deptList", employeeDao.selectDepartments());
	}
	
	@RequestMapping(value="/employee/departmentList")
	public String departmentList() {
		return "/employee/departmentList";
	}	
	
	@RequestMapping(value="/employee/insertDepartments", method=RequestMethod.POST )
	public  @ResponseBody Map<String, ? extends Object>  insertDepartments(@RequestBody Departments bean, HttpServletResponse response) {
		employeeDao.insertDepartments(bean);
		return Collections.singletonMap("result", bean.getDepartment_id());
	}	
	
	@RequestMapping(value="/employee/availability", method=RequestMethod.GET)
	public @ResponseBody Map<String, ? extends Object> getAvailability(@RequestParam String department_id) {
		String result ="true";
		Departments bean = employeeDao.selectDepartment(department_id);
		if ( bean != null) result ="false";
		return Collections.singletonMap("result", result);
	}	
//	@ModelAttribute("jobs")
//	public List<Jobs> codes() {
//	    return employeeDao.selectJobs();
//	}
}
