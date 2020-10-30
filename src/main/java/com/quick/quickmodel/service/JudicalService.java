package com.quick.quickmodel.service;

import com.quick.quickmodel.dao.tables.pojos.JudicalEntity;
import com.quick.quickmodel.dao.tables.pojos.JudicalEntityT;
import com.quick.quickmodel.mapper.JudicalMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * ClassName:JudicalService
 * Package:com.quick.quickmodel.service
 * Description:
 *
 * @Date:2020/10/7 15:24
 * @Author:$licunzhuang@13253633031
 */
@Service
public class JudicalService {
    @Autowired
    public JudicalMapper mapper;

    public List<JudicalEntityT> select(){
        return mapper.selectById();
    }

}
