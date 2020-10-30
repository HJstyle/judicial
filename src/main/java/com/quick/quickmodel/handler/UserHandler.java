package com.quick.quickmodel.handler;

import com.quick.quickmodel.dao.tables.pojos.User;
import com.quick.quickmodel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/user")
public class UserHandler {
    @Autowired
    UserService service;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String UserLogin(
            @RequestBody User user
    ){
        return service.login(user);
    }
}
