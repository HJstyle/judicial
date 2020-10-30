/*
 * This file is generated by jOOQ.
 */
package com.quick.quickmodel.dao.tables.pojos;


import com.quick.quickmodel.dao.tables.interfaces.IOb;

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
public class Ob implements IOb {

    private static final long serialVersionUID = 29188431;

    private Integer id;
    private String  name;
    private Object  property;
    private Object  knowledgeRelation;
    private Object  objectRelation;
    private Object  docRelation;

    public Ob() {}

    public Ob(IOb value) {
        this.id = value.getId();
        this.name = value.getName();
        this.property = value.getProperty();
        this.knowledgeRelation = value.getKnowledgeRelation();
        this.objectRelation = value.getObjectRelation();
        this.docRelation = value.getDocRelation();
    }

    public Ob(
        Integer id,
        String  name,
        Object  property,
        Object  knowledgeRelation,
        Object  objectRelation,
        Object  docRelation
    ) {
        this.id = id;
        this.name = name;
        this.property = property;
        this.knowledgeRelation = knowledgeRelation;
        this.objectRelation = objectRelation;
        this.docRelation = docRelation;
    }

    @Override
    public Integer getId() {
        return this.id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public Object getProperty() {
        return this.property;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public void setProperty(Object property) {
        this.property = property;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public Object getKnowledgeRelation() {
        return this.knowledgeRelation;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public void setKnowledgeRelation(Object knowledgeRelation) {
        this.knowledgeRelation = knowledgeRelation;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public Object getObjectRelation() {
        return this.objectRelation;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public void setObjectRelation(Object objectRelation) {
        this.objectRelation = objectRelation;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public Object getDocRelation() {
        return this.docRelation;
    }


    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @java.lang.Deprecated
    @Override
    public void setDocRelation(Object docRelation) {
        this.docRelation = docRelation;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("Ob (");

        sb.append(id);
        sb.append(", ").append(name);
        sb.append(", ").append(property);
        sb.append(", ").append(knowledgeRelation);
        sb.append(", ").append(objectRelation);
        sb.append(", ").append(docRelation);

        sb.append(")");
        return sb.toString();
    }

    // -------------------------------------------------------------------------
    // FROM and INTO
    // -------------------------------------------------------------------------

    /**
     * {@inheritDoc}
     */
    @Override
    public void from(IOb from) {
        setId(from.getId());
        setName(from.getName());
        setProperty(from.getProperty());
        setKnowledgeRelation(from.getKnowledgeRelation());
        setObjectRelation(from.getObjectRelation());
        setDocRelation(from.getDocRelation());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public <E extends IOb> E into(E into) {
        into.from(this);
        return into;
    }
}
