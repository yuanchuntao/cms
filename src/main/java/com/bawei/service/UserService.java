package com.bawei.service;

import java.util.List;

import com.bawei.entity.User;
import com.github.pagehelper.PageInfo;



public interface UserService {

	PageInfo<User> list(Integer page,Integer pageSize);
}
