/**
 * 
 */
package com.xawl.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xawl.pojo.UserInfo;
import com.xawl.service.UserInfoService;
import com.xawl.util.JsonMsg;

/**
 * <p>Title:LoginController
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年3月15日 下午8:30:00
 */
@Controller
public class LoginController {
	
	@Autowired
	UserInfoService userInfoService;
	
	/*************************************
	 * @功能 username 账号
	 * @param password
	 *            密码
	 * @param session
	 *            登录成功的用户存入session中,并判断用户身份
	 * @return 跳转到index.jsp
	 * @throws Exception
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public JsonMsg DoLogin(@RequestBody UserInfo userInfo,
			HttpSession session) throws Exception {
		String username=userInfo.getUsername();
		String password=userInfo.getPassword();
		
		
		System.out.println("username="+userInfo.getUsername()+"   password="+userInfo.getPassword());
		System.out.println("数据库的pwd是："+userInfoService.getUserPwd(username));
		//用户存在性
		if (userInfoService.getUserPwd(username) == null|| userInfoService.getUserPwd(username).getPassword().equals("")) {
			System.out.println("用户不存在QAQ");
			return JsonMsg.fail().addInfo("login_error", "用户不存在QAQ");
		} 
		if (userInfoService.getUserPwd(username).getPassword().equals(password)) {
			//用户身份
			String role=userInfoService.getUserRight(username).getRole();
			//用户真实姓名
          	String realname=userInfoService.getUserRealName(username);
			if(role.equals("admin")||role=="admin"){//管理员
				session.setAttribute("realname", realname);
				session.setAttribute("username", username);
				return JsonMsg.success().addInfo("status","admin");
				
			}else if(role.equals("doctor")||role=="doctor"){//医生
				session.setAttribute("realname", realname);
				session.setAttribute("username", username);
				return JsonMsg.success().addInfo("status", "teacher");
			}else{//学生
				session.setAttribute("realname", realname);
				session.setAttribute("username", username);
				return JsonMsg.success().addInfo("status", "student");
			}
		}
		return JsonMsg.fail().addInfo("login_error", "密码不正确QAQ");
	}
	
	/*************************************
	 * @return 登录页面
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.err.println("返回login页面");
		return "login";
	}
	
	/**************************************
	 * @功能 退出登录
	 * @return 跳转到login
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		// 清除Session
		session.invalidate();
		// 重定向到登录页面的跳转方法
		return "redirect:login";
	}
	
	
}
