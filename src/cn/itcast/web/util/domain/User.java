package cn.itcast.web.util.domain;

/**
 * 用户实体类   javabean
 */
public class User {
    private int id;
    private String username;
    private String password;
    private String name;
    private String sex;
    private String phone;
    private String age;
    private String desc;
    private String headImg;
    private String is_vecter;
    private String is_admin;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public String getIs_vecter() {
        return is_vecter;
    }

    public void setIs_vecter(String is_vecter) {
        this.is_vecter = is_vecter;
    }

    public String getIs_admin() {
        return is_admin;
    }

    public void setIs_admin(String is_admin) {
        this.is_admin = is_admin;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", phone='" + phone + '\'' +
                ", age='" + age + '\'' +
                ", desc='" + desc + '\'' +
                ", headImg='" + headImg + '\'' +
                ", is_vecter='" + is_vecter + '\'' +
                ", is_admin='" + is_admin + '\'' +
                '}';
    }
}
