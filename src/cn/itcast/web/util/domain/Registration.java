package cn.itcast.web.util.domain;

public class Registration {
    private int r_id;
    private int uu_id;
    private int uv_id;
    private String r_desc;
    private String is_ok;

    public int getR_id() {
        return r_id;
    }

    public void setR_id(int r_id) {
        this.r_id = r_id;
    }

    public int getUu_id() {
        return uu_id;
    }

    public void setUu_id(int uu_id) {
        this.uu_id = uu_id;
    }

    public int getUv_id() {
        return uv_id;
    }

    public void setUv_id(int uv_id) {
        this.uv_id = uv_id;
    }

    public String getR_desc() {
        return r_desc;
    }

    public void setR_desc(String r_desc) {
        this.r_desc = r_desc;
    }

    public String getIs_ok() {
        return is_ok;
    }

    public void setIs_ok(String is_ok) {
        this.is_ok = is_ok;
    }

    @Override
    public String toString() {
        return "Registration{" +
                "r_id=" + r_id +
                ", uu_id=" + uu_id +
                ", uv_id=" + uv_id +
                ", r_desc='" + r_desc + '\'' +
                ", is_ok='" + is_ok + '\'' +
                '}';
    }
}
