package com.user.demo.controller;

import com.user.demo.entity.User;
import com.user.demo.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.util.List;

/**
 * 控制器类
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private IUserService userService;

    @RequestMapping(value = "/find", method = RequestMethod.GET)
    public ModelAndView findAll(ModelAndView mv){
        List<User> userList = userService.findAll();
        mv.addObject("userList", userList);
        mv.setViewName("user");
        return mv;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveUser(User u, ModelAndView mv){
        userService.saveUser(u);
        mv.setViewName("redirect:/user/find"); //保存完后重定向到原来页面
        return mv;
    }
}
