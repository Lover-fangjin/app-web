package com.ztman.firectrl.model.service;

import com.ztman.firectrl.model.entity.UserAssist;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
	public abstract UserAssist login(String username, String password);
}
