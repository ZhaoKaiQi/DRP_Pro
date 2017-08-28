package com.qf.controll;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qf.crudrepository.User;

@Controller
public class FirstControll {

	/**
	 * 将用户的信息取出来放到域对象中
	 * 
	 * @Title: first
	 * @Description: TODO
	 * @param @return
	 * @return String
	 * @throws
	 */
	@RequestMapping("/first.action")
	public String first(Model model) {
		Subject subject = SecurityUtils.getSubject();
		User user = (User) subject.getPrincipal();
		System.out.println("首页first那个controll执行了，获取到的user为："+user);
		model.addAttribute("user", user);
		System.out.println("/first.action中的值是:" + user);
		return "index";
	}

}
