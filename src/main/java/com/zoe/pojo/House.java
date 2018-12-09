package com.zoe.pojo;

public class House {
    public String houseID;
    public String houseName;
    public String memberID;
    public String rentPrice;
    public String checkInDate;
    public String houseType;
    public String area;
    public String elevator;

    public String getHouseID() {
        return houseID;
    }

    public void setHouseID(String houseID) {
        this.houseID = houseID;
    }

    public String getHouseName() {
        return houseName;
    }

    public void setHouseName(String houseName) {
        this.houseName = houseName;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
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
                "houseID='" + houseID + '\'' +
                ", houseName='" + houseName + '\'' +
                ", memberID='" + memberID + '\'' +
                ", rentPrice='" + rentPrice + '\'' +
                ", checkInDate='" + checkInDate + '\'' +
                ", houseType='" + houseType + '\'' +
                ", area='" + area + '\'' +
                ", elevator='" + elevator + '\'' +
                '}';
    }
}
