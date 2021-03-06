/*
 * This file is generated by jOOQ.
 */
package com.quick.quickmodel.dao.tables.pojos;


import com.quick.quickmodel.dao.tables.interfaces.IUser;

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
public class User implements IUser {

    private static final long serialVersionUID = 1091934586;

    private String username;
    private String password;

    public User() {}

    public User(IUser value) {
        this.username = value.getUsername();
        this.password = value.getPassword();
    }

    public User(
        String username,
        String password
    ) {
        this.username = username;
        this.password = password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("User (");

        sb.append(username);
        sb.append(", ").append(password);

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
    public void from(IUser from) {
        setUsername(from.getUsername());
        setPassword(from.getPassword());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public <E extends IUser> E into(E into) {
        into.from(this);
        return into;
    }
}
