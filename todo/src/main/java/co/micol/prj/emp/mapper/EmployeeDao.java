package com.company.employee;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service(value="employeeDao")
public class EmployeeDao {

	@Resource(name="employeeMapper")
	private EmployeeMapper employeeMapper;

	public List<Map<String, Object>> 
	  selectSearch(Map<String, Object> map){
		return employeeMapper.selectSearch(map);
	}

	//직업목록
	public List<Jobs> selectJobs(){
		return employeeMapper.selectJobs();
	}
	
	//부서목록
	public List<Departments> selectDepartments(){
		return employeeMapper.selectDepartments();
	}
	//부서 단건 조회
	public Departments selectDepartment(String department_id){
		return employeeMapper.selectDepartment(department_id);
	}	
	//부서등록
	public void insertDepartments(Departments bean){
		employeeMapper.insertDepartments(bean);
	}
}
