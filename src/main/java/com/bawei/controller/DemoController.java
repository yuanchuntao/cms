package com.bawei.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bawei.entity.User;
import com.bawei.service.UserService;
import com.github.pagehelper.PageInfo;



@Controller
public class DemoController {

	@Resource
	private UserService userService;
	@RequestMapping("list")
	public String list(Model model,
			@RequestParam(defaultValue = "1")Integer page,
			@RequestParam(defaultValue = "3")Integer pageSize) {
		PageInfo<User> info = userService.list(page, pageSize);
		model.addAttribute("info",info);
		return "list";
	}
}
