package com.quick.quickmodel.dao.tables.pojos;

public class case_Info {
    public int caseId;
    public String caseName;
    public String caseleixing;
    public String casedanwei;
    public String law;



    public int getCaseId() {
        return caseId;
    }

    public String getCasedanwei() {
        return casedanwei;
    }

    public String getLaw() {
        return law;
    }

    public void setLaw(String law) {
        this.law = law;
    }

    public void setCasedanwei(String casedanwei) {
        this.casedanwei = casedanwei;
    }

    public String getCaseleixing() {
        return caseleixing;
    }

    public void setCaseleixing(String caseleixing) {
        this.caseleixing = caseleixing;
    }

    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName;
    }

    public void setCaseId(int caseId) {
        this.caseId = caseId;
    }







    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof personal_info)) return false;

        personal_info that = (personal_info) o;

        if (getCaseId() != that.getId()) return false;
        if (!getCaseName().equals(that.getName())) return false;
        if (!getCasedanwei().equals(that.getSex())) return false;
        if (!getCaseleixing().equals(that.getShenfen())) return false;
        if (!getLaw().equals(that.getBirth())) return false;
        return getLaw().equals(that.getMinzu());
    }

    @Override
    public int hashCode() {
        int result = getCaseId();
        result = 31 * result + getCaseName().hashCode();
        result = 31 * result + getCaseleixing().hashCode();
        result = 31 * result + getCasedanwei().hashCode();
        result = 31 * result + getLaw().hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "personal_info{" +
                "caseId=" + caseId +
                ", caseName='" + caseName + '\'' +
                ", caseleixing='" + caseleixing + '\'' +
                ", casedanwei='" + casedanwei + '\'' +
                ", law='" + law + '\'' +
                '}';
    }

}
