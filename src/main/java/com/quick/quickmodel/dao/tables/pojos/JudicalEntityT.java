package com.quick.quickmodel.dao.tables.pojos;

import com.quick.quickmodel.dao.tables.interfaces.IJudicalEntity;

/**
 * ClassName:JudicalEntityT
 * Package:com.quick.quickmodel.dao.tables.pojos
 * Description:
 *
 * @Date:2020/10/7 15:58
 * @Author:$licunzhuang@13253633031
 */
public class JudicalEntityT implements IJudicalEntity {
    public int id;
    public String name;
    public Object property;
    public Object knowledge_relation;
    public Object object_relation;
    public Object doc_relation;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Object getProperty() {
        return property;
    }

    public void setProperty(Object property) {
        this.property = property;
    }

    public Object getKnowledge_relation() {
        return knowledge_relation;
    }

    public void setKnowledge_relation(Object knowledge_relation) {
        this.knowledge_relation = knowledge_relation;
    }

    public Object getObject_relation() {
        return object_relation;
    }

    public void setObject_relation(Object object_relation) {
        this.object_relation = object_relation;
    }

    public Object getDoc_relation() {
        return doc_relation;
    }

    public void setDoc_relation(Object doc_relation) {
        this.doc_relation = doc_relation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof JudicalEntityT)) return false;

        JudicalEntityT that = (JudicalEntityT) o;

        if (getId() != that.getId()) return false;
        if (!getName().equals(that.getName())) return false;
        if (!getProperty().equals(that.getProperty())) return false;
        if (!getKnowledge_relation().equals(that.getKnowledge_relation())) return false;
        if (!getObject_relation().equals(that.getObject_relation())) return false;
        return getDoc_relation().equals(that.getDoc_relation());
    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + getName().hashCode();
        result = 31 * result + getProperty().hashCode();
        result = 31 * result + getKnowledge_relation().hashCode();
        result = 31 * result + getObject_relation().hashCode();
        result = 31 * result + getDoc_relation().hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "JudicalEntityT{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", property=" + property +
                ", knowledge_relation=" + knowledge_relation +
                ", object_relation=" + object_relation +
                ", doc_relation=" + doc_relation +
                '}';
    }
}
