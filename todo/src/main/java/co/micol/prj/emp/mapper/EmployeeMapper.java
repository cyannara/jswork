package com.company.employee;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository(value="employeeMapper")
public interface EmployeeMapper {

	//사원검색
	List<Map<String, Object>> 
	  selectSearch(Map<String, Object> map);
	
	//직업목록
	List<Jobs> selectJobs();
	
	//부서목록
	List<Departments> selectDepartments();
	
	//부서단건조회
	Departments selectDepartment(String department_id);	
	
	//부서등록
	void insertDepartments(Departments bean);
}
