package com.zoe.pojo;

import java.util.List;

public class House {
    private int houseID;
    private String houseName;
    private int memberID;
    private String rentPrice;
    private String checkInDate;
    private String houseType;
    private String area;
    private String elevator;
    private String image;
    private List<Rentrequest> rentrequests;

    public List<Rentrequest> getRentrequests() {
        return rentrequests;
    }

    public void setRentrequests(List<Rentrequest> rentrequests) {
        this.rentrequests = rentrequests;
    }

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



    public String getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(String rentPrice) {
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

    public String getElevator() {
        return elevator;
    }

    public void setElevator(String elevator) {
        this.elevator = elevator;
    }

    @Override
    public String toString() {
        return "House{" +
                "houseID=" + houseID +
                ", houseName='" + houseName + '\'' +
                ", memberID=" + memberID +
                ", rentPrice='" + rentPrice + '\'' +
                ", checkInDate='" + checkInDate + '\'' +
                ", houseType='" + houseType + '\'' +
                ", area='" + area + '\'' +
                ", elevator='" + elevator + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
