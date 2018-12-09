package com.zoe.pojo;

public class Rentrequest {
    private int reqId;
    private int memberID;
    private int houseID;
    private String reqTime;
    private float budget;
    private String city;
    private String mateSex;

    public int getReqId() {
        return reqId;
    }

    public void setReqId(int reqId) {
        this.reqId = reqId;
    }

    public int getMemberID() {
        return memberID;
    }

    public void setMemberID(int memberID) {
        this.memberID = memberID;
    }

    public int getHouseID() {
        return houseID;
    }

    public void setHouseID(int houseID) {
        this.houseID = houseID;
    }

    public String getReqTime() {
        return reqTime;
    }

    public void setReqTime(String reqTime) {
        this.reqTime = reqTime;
    }

    public float getBudget() {
        return budget;
    }

    public void setBudget(float budget) {
        this.budget = budget;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMateSex() {
        return mateSex;
    }

    public void setMateSex(String mateSex) {
        this.mateSex = mateSex;
    }

    @Override
    public String toString() {
        return "Rentrequest{" +
                "reqId=" + reqId +
                ", memberID=" + memberID +
                ", houseID=" + houseID +
                ", reqTime='" + reqTime + '\'' +
                ", budget=" + budget +
                ", city='" + city + '\'' +
                ", mateSex='" + mateSex + '\'' +
                '}';
    }
}
