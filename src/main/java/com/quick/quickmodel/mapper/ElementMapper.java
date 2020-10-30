package com.quick.quickmodel.mapper;

import com.quick.quickmodel.dao.tables.pojos.ElementEntity;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * ClassName:ElementMapper
 * Package:com.quick.quickmodel.mapper
 * Description:
 *
 * @Date:2020/10/19 16:28
 * @Author:$licunzhuang@13253633031
 */
@Mapper
@Repository
public interface ElementMapper {
    @Select("select * from element where id=#{id}")
    public ElementEntity selectById(int id);

    @Select("select * from element")
    public List<ElementEntity> findAll();

    @Select("delete from element where id=#{id}")
    public void deleteById(int id);

    @Insert("insert into element (name,chengZuRen) values(#{el.name},#{el.chengZuRen})")
    public void insert(@Param("el") ElementEntity el);

}
