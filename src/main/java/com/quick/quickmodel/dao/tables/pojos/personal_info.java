package com.quick.quickmodel.dao.tables.pojos;

public class personal_info {
    public int id;
    public String name;
    public String sex;
    public String shenfen;
    public String birth;
    public String birthplace;
    public String biaoxian;
    public String jiangcheng;
    public String caseId;
    public String minzu;
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

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getShenfen() {
        return shenfen;
    }

    public void setShenfen(String shenfen) {
        this.shenfen = shenfen;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getBirthplace() {
        return birthplace;
    }

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public String getBiaoxian() {
        return biaoxian;
    }

    public void setBiaoxian(String biaoxian) {
        this.biaoxian = biaoxian;
    }

    public String getJiangcheng() {
        return jiangcheng;
    }

    public void setJiangcheng(String jiangcheng) {
        this.jiangcheng = jiangcheng;
    }

    public String getCaseId() {
        return caseId;
    }

    public void setCaseId(String caseId) {
        this.caseId = caseId;
    }

    public String getMinzu() {
        return minzu;
    }

    public void setMinzu(String minzu) {
        this.minzu = minzu;
    }




    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof personal_info)) return false;

        personal_info that = (personal_info) o;

        if (getId() != that.getId()) return false;
        if (!getName().equals(that.getName())) return false;
        if (!getSex().equals(that.getSex())) return false;
        if (!getShenfen().equals(that.getShenfen())) return false;
        if (!getBirth().equals(that.getBirth())) return false;
        if (!getBirthplace().equals(that.getBirthplace())) return false;
        if (!getBiaoxian().equals(that.getBiaoxian())) return false;
        if (!getJiangcheng().equals(that.getJiangcheng())) return false;
        if (!getCaseId().equals(that.getCaseId())) return false;
        if (!getMinzu().equals(that.getMinzu())) return false;
        return getMinzu().equals(that.getMinzu());
    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + getName().hashCode();
        result = 31 * result + getMinzu().hashCode();
        result = 31 * result + getCaseId().hashCode();
        result = 31 * result + getJiangcheng().hashCode();
        result = 31 * result + getBiaoxian().hashCode();
        result = 31 * result + getBirthplace().hashCode();
        result = 31 * result + getBirth().hashCode();
        result = 31 * result + getSex().hashCode();
        result = 31 * result + getShenfen().hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "personal_info{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", minzu='" + minzu + '\'' +
                ", caseId='" + caseId + '\'' +
                ", jiangcheng='" + jiangcheng + '\'' +
                ", biaoxian='" + biaoxian + '\'' +
                ", birthplace='" + birthplace + '\'' +
                ", birth='" + birth + '\'' +
                ", sex='" + sex + '\'' +
                ", shenfen='" + shenfen + '\'' +
                '}';
    }


}
