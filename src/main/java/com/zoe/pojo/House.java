package com.zoe.pojo;

import java.util.List;

public class House {
    private int houseID;
    private String houseName;
    private int memberID;
    private int rentPrice;
    private String checkInDate;
    private String houseType;
    private String area;
    private String rentNum;
    private String image;
    private String way;
    private String description;
    private String sex;


    /**
     * 非数据库字段
     * 一个房源对应多个请求
     */

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getHouseID() {
        return houseID;
    }

    public void setHouseID(int houseID) {
        this.houseID = houseID;
    }

    public int getMemberID() {
        return memberID;
    }

    public void setMemberID(int memberID) {
        this.memberID = memberID;
    }

    public String getHouseName() {
        return houseName;
    }

    public void setHouseName(String houseName) {
        this.houseName = houseName;
    }

    public int getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(int rentPrice) {
        this.rentPrice = rentPrice;
    }

    public String getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(String checkInDate) {
        this.checkInDate = checkInDate;
    }

    public String getHouseType() {
        return houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getRentNum() {
        return rentNum;
    }

    public void setRentNum(String rentNum) {
        this.rentNum = rentNum;
    }

    public String getWay() {
        return way;
    }

    public void setWay(String way) {
        this.way = way;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "House{" +
                "houseID=" + houseID +
                ", houseName='" + houseName + '\'' +
                ", memberID=" + memberID +
                ", rentPrice=" + rentPrice +
                ", checkInDate='" + checkInDate + '\'' +
                ", houseType='" + houseType + '\'' +
                ", area='" + area + '\'' +
                ", rentNum='" + rentNum + '\'' +
                ", image='" + image + '\'' +
                ", way='" + way + '\'' +
                ", description='" + description + '\'' +
                ", sex='" + sex + '\'' +
                '}';
    }
}
