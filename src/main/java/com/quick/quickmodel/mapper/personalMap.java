package com.quick.quickmodel.mapper;

import com.quick.quickmodel.dao.tables.pojos.personal_info;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface personalMap {
    @Select("select * from personal_info where id=#{id}")
    public personal_info selectById(int id);

    @Select("select * from personal_info")
    public List<personal_info> findAll();

    @Select("delete from personal_info where id=#{id}")
    public void deleteById(int id);

    @Insert("insert into personal_info (name,chengZuRen) values()")
    public void insert(@Param("el") personal_info el);
}
