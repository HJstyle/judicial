/*
 * This file is generated by jOOQ.
 */
package com.quick.quickmodel.dao;


import com.quick.quickmodel.dao.tables.Docs;
import com.quick.quickmodel.dao.tables.Knowledge;
import com.quick.quickmodel.dao.tables.Ob;
import com.quick.quickmodel.dao.tables.User;

import javax.annotation.Generated;


/**
 * Convenience access to all tables in knowledgemap
 */
@Generated(
    value = {
        "http://www.jooq.org",
        "jOOQ version:3.11.9"
    },
    comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Tables {

    /**
     * The table <code>knowledgemap.docs</code>.
     */
    public static final Docs DOCS = com.quick.quickmodel.dao.tables.Docs.DOCS;

    /**
     * The table <code>knowledgemap.knowledge</code>.
     */
    public static final Knowledge KNOWLEDGE = com.quick.quickmodel.dao.tables.Knowledge.KNOWLEDGE;

    /**
     * The table <code>knowledgemap.ob</code>.
     */
    public static final Ob OB = com.quick.quickmodel.dao.tables.Ob.OB;

    /**
     * The table <code>knowledgemap.user</code>.
     */
    public static final User USER = com.quick.quickmodel.dao.tables.User.USER;
}