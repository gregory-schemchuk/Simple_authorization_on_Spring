package com.shpilly_willy.simple_authorization_on_spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.shpilly_willy.simple_authorization_on_spring.entity.User;
import com.shpilly_willy.simple_authorization_on_spring.entity.enums.UserRoleEnum;

import java.util.HashSet;
import java.util.Set;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

  @Autowired
  private UserService userService;

  @Override
  public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
    User user = userService.getUser("shpilly_willy");

    Set<GrantedAuthority> roles = new HashSet();
    roles.add(new SimpleGrantedAuthority(UserRoleEnum.USER.name()) );

    UserDetails userDetails = new org.springframework.security.core.userdetails.User(user.getLogin(), user.getPassword(), roles);

    return userDetails;
  }
}
