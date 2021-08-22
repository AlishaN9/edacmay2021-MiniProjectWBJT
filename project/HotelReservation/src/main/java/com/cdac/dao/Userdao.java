package com.cdac.dao;

import java.util.List;

import com.cdac.entity.users;

public interface Userdao {
	public int insertUser(users users);
	public boolean deleteUser(int id);
	public List<users> getAllUser();
	public boolean updateUser(int getId);
}
