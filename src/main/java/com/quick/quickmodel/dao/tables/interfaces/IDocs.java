/*
 * This file is generated by jOOQ.
 */
package com.quick.quickmodel.dao.tables.interfaces;


import java.io.Serializable;

import javax.annotation.Generated;


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
public interface IDocs extends Serializable {

    /**
     * Setter for <code>knowledgemap.docs.id</code>.
     */
    public void setId(Integer value);

    /**
     * Getter for <code>knowledgemap.docs.id</code>.
     */
    public Integer getId();

    /**
     * Setter for <code>knowledgemap.docs.name</code>.
     */
    public void setName(String value);

    /**
     * Getter for <code>knowledgemap.docs.name</code>.
     */
    public String getName();

    /**
     * Setter for <code>knowledgemap.docs.href</code>.
     */
    public void setHref(String value);

    /**
     * Getter for <code>knowledgemap.docs.href</code>.
     */
    public String getHref();

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public void setObjectRelation(Object value);

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public Object getObjectRelation();

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public void setKnowledgeRelation(Object value);

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public Object getKnowledgeRelation();

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public void setDocRelation(Object value);

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public Object getDocRelation();

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public void setProperty(Object value);

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    public Object getProperty();

    // -------------------------------------------------------------------------
    // FROM and INTO
    // -------------------------------------------------------------------------

    /**
     * Load data from another generated Record/POJO implementing the common interface IDocs
     */
    public void from(com.quick.quickmodel.dao.tables.interfaces.IDocs from);

    /**
     * Copy data into another generated Record/POJO implementing the common interface IDocs
     */
    public <E extends com.quick.quickmodel.dao.tables.interfaces.IDocs> E into(E into);
}
