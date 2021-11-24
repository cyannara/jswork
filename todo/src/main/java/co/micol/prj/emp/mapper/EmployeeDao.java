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

	//�������
	public List<Jobs> selectJobs(){
		return employeeMapper.selectJobs();
	}
	
	//�μ����
	public List<Departments> selectDepartments(){
		return employeeMapper.selectDepartments();
	}
	//�μ� �ܰ� ��ȸ
	public Departments selectDepartment(String department_id){
		return employeeMapper.selectDepartment(department_id);
	}	
	//�μ����
	public void insertDepartments(Departments bean){
		employeeMapper.insertDepartments(bean);
	}
}
