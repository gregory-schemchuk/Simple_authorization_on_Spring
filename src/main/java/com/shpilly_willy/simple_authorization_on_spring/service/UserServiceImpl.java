package com.shpilly_willy.simple_authorization_on_spring.service;

import com.shpilly_willy.simple_authorization_on_spring.entity.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

  private String password = "1234";

  @Override
  public User getUser(String login) {
    User user = new User(login, password);

    return user;
  }
}
