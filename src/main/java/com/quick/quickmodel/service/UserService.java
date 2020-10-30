package com.quick.quickmodel.service;

import cn.hutool.json.JSONObject;
import com.quick.quickmodel.dao.tables.daos.UserDao;
import com.quick.quickmodel.dao.tables.pojos.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserDao userDao;

    public String login(User user){
        String userName = user.getUsername();
        String passWord = user.getPassword();
        User fetchUser = userDao.fetchOneByUsername(userName);
        JSONObject json = new JSONObject();
        if(fetchUser == null){
            json.put("Msg","not exits");
        }else{
            if(fetchUser.getPassword().equals(user.getPassword())){
                json.put("Msg","Ok");
            }else{
                json.put("Meg","password err");
            }
        }
        return json.toString();
    }

}
