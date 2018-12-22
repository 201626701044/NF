package com.zoe.pojo;


public class Member {

    private int member_ID;
    private String member_name;
    private String member_image;
    private String member_password;
    private String member_sex;
    private String member_idcard;
    private String member_phone;

    public String getMember_image() {
        return member_image;
    }

    public void setMember_image(String member_image) {
        this.member_image = member_image;
    }

    public int getMember_ID() {
        return member_ID;
    }

    public void setMember_ID(int member_ID) {
        this.member_ID = member_ID;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_password() {
        return member_password;
    }

    public void setMember_password(String member_password) {
        this.member_password = member_password;
    }

    public String getMember_sex() {
        return member_sex;
    }

    public void setMember_sex(String member_sex) {
        this.member_sex = member_sex;
    }

    public String getMember_idcard() {
        return member_idcard;
    }

    public void setMember_idcard(String member_idcard) {
        this.member_idcard = member_idcard;
    }

    public String getMember_phone() {
        return member_phone;
    }

    public void setMember_phone(String member_phone) {
        this.member_phone = member_phone;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }


    private String member_email;

    @Override
    public String toString() {
        return "Member{" +
                "member_ID=" + member_ID +
                ", member_name='" + member_name + '\'' +
                ", member_image='" + member_image + '\'' +
                ", member_password='" + member_password + '\'' +
                ", member_sex='" + member_sex + '\'' +
                ", member_idcard='" + member_idcard + '\'' +
                ", member_phone='" + member_phone + '\'' +
                ", member_email='" + member_email + '\'' +
                '}';
    }
}