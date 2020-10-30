package com.quick.quickmodel.mapper;


import com.quick.quickmodel.dao.tables.pojos.case_Info;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface caseMap {
    @Select("select * from case_info where id=#{caseId}")
    public case_Info selectById(int id);

    @Select("select * from case_info")
    public List<case_Info> findAll();

    @Select("delete from personal_info where id=#{caseId}")
    public void deleteById(int id);

    @Insert("insert into case_info (name,chengZuRen) values()")
    public void insert(@Param("el") case_Info el);
}