package com.quick.quickmodel.dao.tables.pojos;

/**
 * ClassName:ElementEntity
 * Package:com.quick.quickmodel.dao.tables.pojos
 * Description:
 *
 * @Date:2020/10/19 16:22
 * @Author:$licunzhuang@13253633031
 */
public class ElementEntity {
    public int id;
    public String name;
    public String chengZuRen;
    public String chuZuRen;
    public String shijiZhifuJine;
    public String zhifuZujinShijian;
    public String zulinHetongQiandingShijian;
    public String zulinQixian;
    public String fangChanJianzhuMianji;
    public String fangwuYongtu;
    public String tuoqianWeiyuejinBiaozhun;
    public String tuoqianJisuanFangfa;
    public String zujinZhifuFangshi;
    public String fangwuJutiWeizhi;

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

    public String getChengZuRen() {
        return chengZuRen;
    }

    public void setChengZuRen(String chengZuRen) {
        this.chengZuRen = chengZuRen;
    }

    public String getChuZuRen() {
        return chuZuRen;
    }

    public void setChuZuRen(String chuZuRen) {
        this.chuZuRen = chuZuRen;
    }

    public String getShijiZhifuJine() {
        return shijiZhifuJine;
    }

    public void setShijiZhifuJine(String shijiZhifuJine) {
        this.shijiZhifuJine = shijiZhifuJine;
    }

    public String getZhifuZujinShijian() {
        return zhifuZujinShijian;
    }

    public void setZhifuZujinShijian(String zhifuZujinShijian) {
        this.zhifuZujinShijian = zhifuZujinShijian;
    }

    public String getZulinHetongQiandingShijian() {
        return zulinHetongQiandingShijian;
    }

    public void setZulinHetongQiandingShijian(String zulinHetongQiandingShijian) {
        this.zulinHetongQiandingShijian = zulinHetongQiandingShijian;
    }

    public String getZulinQixian() {
        return zulinQixian;
    }

    public void setZulinQixian(String zulinQixian) {
        this.zulinQixian = zulinQixian;
    }

    public String getFangChanJianzhuMianji() {
        return fangChanJianzhuMianji;
    }

    public void setFangChanJianzhuMianji(String fangChanJianzhuMianji) {
        this.fangChanJianzhuMianji = fangChanJianzhuMianji;
    }

    public String getFangwuYongtu() {
        return fangwuYongtu;
    }

    public void setFangwuYongtu(String fangwuYongtu) {
        this.fangwuYongtu = fangwuYongtu;
    }

    public String getTuoqianWeiyuejinBiaozhun() {
        return tuoqianWeiyuejinBiaozhun;
    }

    public void setTuoqianWeiyuejinBiaozhun(String tuoqianWeiyuejinBiaozhun) {
        this.tuoqianWeiyuejinBiaozhun = tuoqianWeiyuejinBiaozhun;
    }

    public String getTuoqianJisuanFangfa() {
        return tuoqianJisuanFangfa;
    }

    public void setTuoqianJisuanFangfa(String tuoqianJisuanFangfa) {
        this.tuoqianJisuanFangfa = tuoqianJisuanFangfa;
    }

    public String getZujinZhifuFangshi() {
        return zujinZhifuFangshi;
    }

    public void setZujinZhifuFangshi(String zujinZhifuFangshi) {
        this.zujinZhifuFangshi = zujinZhifuFangshi;
    }

    public String getFangwuJutiWeizhi() {
        return fangwuJutiWeizhi;
    }

    public void setFangwuJutiWeizhi(String fangwuJutiWeizhi) {
        this.fangwuJutiWeizhi = fangwuJutiWeizhi;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ElementEntity)) return false;

        ElementEntity that = (ElementEntity) o;

        if (getId() != that.getId()) return false;
        if (!getName().equals(that.getName())) return false;
        if (!getChengZuRen().equals(that.getChengZuRen())) return false;
        if (!getChuZuRen().equals(that.getChuZuRen())) return false;
        if (!getShijiZhifuJine().equals(that.getShijiZhifuJine())) return false;
        if (!getZhifuZujinShijian().equals(that.getZhifuZujinShijian())) return false;
        if (!getZulinHetongQiandingShijian().equals(that.getZulinHetongQiandingShijian())) return false;
        if (!getZulinQixian().equals(that.getZulinQixian())) return false;
        if (!getFangChanJianzhuMianji().equals(that.getFangChanJianzhuMianji())) return false;
        if (!getFangwuYongtu().equals(that.getFangwuYongtu())) return false;
        if (!getTuoqianWeiyuejinBiaozhun().equals(that.getTuoqianWeiyuejinBiaozhun())) return false;
        if (!getTuoqianJisuanFangfa().equals(that.getTuoqianJisuanFangfa())) return false;
        if (!getZujinZhifuFangshi().equals(that.getZujinZhifuFangshi())) return false;
        return getFangwuJutiWeizhi().equals(that.getFangwuJutiWeizhi());
    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + getName().hashCode();
        result = 31 * result + getChengZuRen().hashCode();
        result = 31 * result + getChuZuRen().hashCode();
        result = 31 * result + getShijiZhifuJine().hashCode();
        result = 31 * result + getZhifuZujinShijian().hashCode();
        result = 31 * result + getZulinHetongQiandingShijian().hashCode();
        result = 31 * result + getZulinQixian().hashCode();
        result = 31 * result + getFangChanJianzhuMianji().hashCode();
        result = 31 * result + getFangwuYongtu().hashCode();
        result = 31 * result + getTuoqianWeiyuejinBiaozhun().hashCode();
        result = 31 * result + getTuoqianJisuanFangfa().hashCode();
        result = 31 * result + getZujinZhifuFangshi().hashCode();
        result = 31 * result + getFangwuJutiWeizhi().hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "ElementEntity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", chengZuRen='" + chengZuRen + '\'' +
                ", chuZuRen='" + chuZuRen + '\'' +
                ", shijiZhifuJine='" + shijiZhifuJine + '\'' +
                ", zhifuZujinShijian='" + zhifuZujinShijian + '\'' +
                ", zulinHetongQiandingShijian='" + zulinHetongQiandingShijian + '\'' +
                ", zulinQixian='" + zulinQixian + '\'' +
                ", fangChanJianzhuMianji='" + fangChanJianzhuMianji + '\'' +
                ", fangwuYongtu='" + fangwuYongtu + '\'' +
                ", tuoqianWeiyuejinBiaozhun='" + tuoqianWeiyuejinBiaozhun + '\'' +
                ", tuoqianJisuanFangfa='" + tuoqianJisuanFangfa + '\'' +
                ", zujinZhifuFangshi='" + zujinZhifuFangshi + '\'' +
                ", fangwuJutiWeizhi='" + fangwuJutiWeizhi + '\'' +
                '}';
    }
}
