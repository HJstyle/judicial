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
public interface IUser extends Serializable {

    /**
     * Setter for <code>knowledgemap.user.username</code>.
     */
    public void setUsername(String value);

    /**
     * Getter for <code>knowledgemap.user.username</code>.
     */
    public String getUsername();

    /**
     * Setter for <code>knowledgemap.user.password</code>.
     */
    public void setPassword(String value);

    /**
     * Getter for <code>knowledgemap.user.password</code>.
     */
    public String getPassword();

    // -------------------------------------------------------------------------
    // FROM and INTO
    // -------------------------------------------------------------------------

    /**
     * Load data from another generated Record/POJO implementing the common interface IUser
     */
    public void from(com.quick.quickmodel.dao.tables.interfaces.IUser from);

    /**
     * Copy data into another generated Record/POJO implementing the common interface IUser
     */
    public <E extends com.quick.quickmodel.dao.tables.interfaces.IUser> E into(E into);
}
