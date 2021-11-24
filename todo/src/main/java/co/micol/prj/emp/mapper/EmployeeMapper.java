package com.company.employee;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository(value="employeeMapper")
public interface EmployeeMapper {

	//����˻�
	List<Map<String, Object>> 
	  selectSearch(Map<String, Object> map);
	
	//�������
	List<Jobs> selectJobs();
	
	//�μ����
	List<Departments> selectDepartments();
	
	//�μ��ܰ���ȸ
	Departments selectDepartment(String department_id);	
	
	//�μ����
	void insertDepartments(Departments bean);
}
