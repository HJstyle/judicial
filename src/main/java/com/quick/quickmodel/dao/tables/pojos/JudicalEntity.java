package com.quick.quickmodel.dao.tables.pojos;

import com.quick.quickmodel.dao.tables.interfaces.IJudicalEntity;

/**
 * ClassName:JudicalEntity
 * Package:com.quick.quickmodel.dao.tables.pojos
 * Description:
 *
 * @Date:2020/10/7 14:47
 * @Author:$licunzhuang@13253633031
 */
public class JudicalEntity implements IJudicalEntity{
    public int id;
    public String name;
    public String property;
    public String knowledge_relation;
    public String object_relation;
    public String doc_relation;

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

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public String getKnowledge_relation() {
        return knowledge_relation;
    }

    public void setKnowledge_relation(String knowledge_relation) {
        this.knowledge_relation = knowledge_relation;
    }

    public String getObject_relation() {
        return object_relation;
    }

    public void setObject_relation(String object_relation) {
        this.object_relation = object_relation;
    }

    public String getDoc_relation() {
        return doc_relation;
    }

    public void setDoc_relation(String doc_relation) {
        this.doc_relation = doc_relation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof JudicalEntity)) return false;

        JudicalEntity that = (JudicalEntity) o;

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
        return "JudicalEntity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", property='" + property + '\'' +
                ", knowledge_relation='" + knowledge_relation + '\'' +
                ", object_relation='" + object_relation + '\'' +
                ", doc_relation='" + doc_relation + '\'' +
                '}';
    }
}
