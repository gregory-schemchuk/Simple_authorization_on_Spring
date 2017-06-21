package com.shpilly_willy.simple_authorization_on_spring.service;

import com.shpilly_willy.simple_authorization_on_spring.entity.User;

public interface UserService {

  User getUser(String login);

}
