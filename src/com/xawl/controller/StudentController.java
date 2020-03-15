/**
 * 
 */
package com.xawl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>Title:StudentController
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年3月15日 下午8:53:48
 */

@Controller
@RequestMapping(value="/student")
public class StudentController {

	/*******************************
	 * @return 学生主页
	 */
	@RequestMapping("/stu_index")
	public String Stu_Index(){
		return "student/stu_index";
	}
	
	
}
