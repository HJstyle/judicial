/*
 * This file is generated by jOOQ.
 */
package com.quick.quickmodel.dao.tables.daos;


import com.quick.quickmodel.dao.tables.Docs;
import com.quick.quickmodel.dao.tables.records.DocsRecord;

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
public class DocsDao extends DAOImpl<DocsRecord, com.quick.quickmodel.dao.tables.pojos.Docs, Integer> {

    /**
     * Create a new DocsDao without any configuration
     */
    public DocsDao() {
        super(Docs.DOCS, com.quick.quickmodel.dao.tables.pojos.Docs.class);
    }

    /**
     * Create a new DocsDao with an attached configuration
     */
    @Autowired
    public DocsDao(Configuration configuration) {
        super(Docs.DOCS, com.quick.quickmodel.dao.tables.pojos.Docs.class, configuration);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Integer getId(com.quick.quickmodel.dao.tables.pojos.Docs object) {
        return object.getId();
    }

    /**
     * Fetch records that have <code>id IN (values)</code>
     */
    public List<com.quick.quickmodel.dao.tables.pojos.Docs> fetchById(Integer... values) {
        return fetch(Docs.DOCS.ID, values);
    }

    /**
     * Fetch a unique record that has <code>id = value</code>
     */
    public com.quick.quickmodel.dao.tables.pojos.Docs fetchOneById(Integer value) {
        return fetchOne(Docs.DOCS.ID, value);
    }

    /**
     * Fetch records that have <code>name IN (values)</code>
     */
    public List<com.quick.quickmodel.dao.tables.pojos.Docs> fetchByName(String... values) {
        return fetch(Docs.DOCS.NAME, values);
    }

    /**
     * Fetch records that have <code>href IN (values)</code>
     */
    public List<com.quick.quickmodel.dao.tables.pojos.Docs> fetchByHref(String... values) {
        return fetch(Docs.DOCS.HREF, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Docs> fetchByObjectRelation(Object... values) {
        return fetch(Docs.DOCS.OBJECT_RELATION, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Docs> fetchByKnowledgeRelation(Object... values) {
        return fetch(Docs.DOCS.KNOWLEDGE_RELATION, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Docs> fetchByDocRelation(Object... values) {
        return fetch(Docs.DOCS.DOC_RELATION, values);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public List<com.quick.quickmodel.dao.tables.pojos.Docs> fetchByProperty(Object... values) {
        return fetch(Docs.DOCS.PROPERTY, values);
    }
}
