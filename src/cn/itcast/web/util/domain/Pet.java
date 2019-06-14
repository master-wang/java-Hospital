package cn.itcast.web.util.domain;

public class Pet {
    private int p_id;
    private int u_id;
    private String p_sex;
    private String p_desc;
    private String type;
    private String p_img;

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getP_sex() {
        return p_sex;
    }

    public void setP_sex(String p_sex) {
        this.p_sex = p_sex;
    }

    public String getP_desc() {
        return p_desc;
    }

    public void setP_desc(String p_desc) {
        this.p_desc = p_desc;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getP_img() {
        return p_img;
    }

    public void setP_img(String p_img) {
        this.p_img = p_img;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "p_id=" + p_id +
                ", u_id=" + u_id +
                ", p_sex='" + p_sex + '\'' +
                ", p_desc='" + p_desc + '\'' +
                ", type='" + type + '\'' +
                ", p_img='" + p_img + '\'' +
                '}';
    }
}
