package com.quick.quickmodel.mapper;

import com.quick.quickmodel.dao.tables.pojos.JudicalEntity;
import com.quick.quickmodel.dao.tables.pojos.JudicalEntityT;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * ClassName:MapperTest
 * Package:com.quick.quickmodel.mapper
 * Description:
 *
 * @Date:2020/10/5 23:56
 * @Author:$licunzhuang@13253633031
 */
@Mapper
@Repository
public interface JudicalMapper {
    @Select("select * from ob where id=25 or id=26")
    @Results({ @Result(id = true, column = "id", property = "id"),
            @Result(column = "name", property = "name"),
            @Result(column = "property", property = "property"),
            @Result(column = "knowledge_relation", property = "knowledge_relation"),
            @Result(column = "object_relation", property = "object_relation"),
            @Result(column = "doc_relation", property = "doc_relation"),}
    )
    public List<JudicalEntityT> selectById();
}
