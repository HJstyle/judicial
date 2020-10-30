/*
 * This file is generated by jOOQ.
 */
package com.quick.quickmodel.dao.tables.daos;


import com.quick.quickmodel.dao.tables.Knowledge;
import com.quick.quickmodel.dao.tables.records.KnowledgeRecord;

import java.util.List;

import javax.annotation.Generated;

import org.jooq.Configuration;
import org.jooq.impl.DAOImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 * This class is generated by jOOQ.
 */
@Generated(
    value = {
        "http://www.jooq.org",
        "jOOQ version:3.11.9"
    },
    comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
@Repository
public class KnowledgeDao extends DAOImpl<KnowledgeRecord, com.quick.quickmodel.dao.tables.pojos.Knowledge, Integer> {

    /**
     * Create a new KnowledgeDao without any configuration
     */
    public KnowledgeDao() {
        super(Knowledge.KNOWLEDGE, com.quick.quickmodel.dao.tables.pojos.Knowledge.class);
    }

    /**
     * Create a new KnowledgeDao with an attached configuration
     */
    @Autowired
    public KnowledgeDao(Configuration configuration) {
        super(Knowledge.KNOWLEDGE, com.quick.quickmodel.dao.tables.pojos.Knowledge.class, configuration);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Integer getId(com.quick.quickmodel.dao.tables.pojos.Knowledge object) {
        return object.getId();
    }

    /**
     * Fetch records that have <code>id IN (values)</code>
     */
    public List<com.quick.quickmodel.dao.tables.pojos.Knowledge> fetchById(Integer... values) {
        return fetch(Knowledge.KNOWLEDGE.ID, values);
    }

    /**
     * Fetch a unique record that has <code>id = value</code>
     */
    public com.quick.quickmodel.dao.tables.pojos.Knowledge fetchOneById(Integer value) {
        return fetchOne(Knowledge.KNOWLEDGE.ID, value);
    }

    /**
     * Fetch records that have <code>name IN (values)</code>
     */
    public List<com.quick.quickmodel.dao.tables.pojos.Knowledge> fetchByName(String... values) {
        return fetch(Knowledge.KNOWLEDGE.NAME, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Knowledge> fetchByProperty(Object... values) {
        return fetch(Knowledge.KNOWLEDGE.PROPERTY, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Knowledge> fetchByKnowledgeRelation(Object... values) {
        return fetch(Knowledge.KNOWLEDGE.KNOWLEDGE_RELATION, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Knowledge> fetchByObjectRelation(Object... values) {
        return fetch(Knowledge.KNOWLEDGE.OBJECT_RELATION, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Knowledge> fetchByDocRelation(Object... values) {
        return fetch(Knowledge.KNOWLEDGE.DOC_RELATION, values);
    }
}
