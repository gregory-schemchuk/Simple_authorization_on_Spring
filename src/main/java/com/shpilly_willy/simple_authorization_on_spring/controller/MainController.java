package com.shpilly_willy.simple_authorization_on_spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {

  @RequestMapping(method = RequestMethod.GET)
  public String start(Model model) {
    return "index";
  }
}
