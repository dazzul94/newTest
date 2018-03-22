package java100.app.domain;

import java.sql.Date;

public class Member {
    int memberNo;
    String kName;
    String eName;
    String jName;
    String myNumber; //주민번호
    String photo;  
    Date birthDay;
    int calendar; //양력, 음력 선택
    int gender; 
    int wedding;
    int career; //년차
    int moneyType; //급여 지급유형
    int workingType; //희망직무
    int welcome; //입사유형
    String address;
    String detailAddress;
    String phoneNumber;
    String email;
    int stat; //기술등급
    String alchol;
    public int getMemberNo() {
        return memberNo;
    }
    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }
    public String getkName() {
        return kName;
    }
    public void setkName(String kName) {
        this.kName = kName;
    }
    public String geteName() {
        return eName;
    }
    public void seteName(String eName) {
        this.eName = eName;
    }
    public String getjName() {
        return jName;
    }
    public void setjName(String jName) {
        this.jName = jName;
    }
    public String getMyNumber() {
        return myNumber;
    }
    public void setMyNumber(String myNumber) {
        this.myNumber = myNumber;
    }
    public String getPhoto() {
        return photo;
    }
    public void setPhoto(String photo) {
        this.photo = photo;
    }
    public Date getBirthDay() {
        return birthDay;
    }
    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }
    public int getCalendar() {
        return calendar;
    }
    public void setCalendar(int calendar) {
        this.calendar = calendar;
    }
    public int getGender() {
        return gender;
    }
    public void setGender(int gender) {
        this.gender = gender;
    }
    public int getWedding() {
        return wedding;
    }
    public void setWedding(int wedding) {
        this.wedding = wedding;
    }
    public int getCareer() {
        return career;
    }
    public void setCareer(int career) {
        this.career = career;
    }
    public int getMoneyType() {
        return moneyType;
    }
    public void setMoneyType(int moneyType) {
        this.moneyType = moneyType;
    }
    public int getWorkingType() {
        return workingType;
    }
    public void setWorkingType(int workingType) {
        this.workingType = workingType;
    }
    public int getWelcome() {
        return welcome;
    }
    public void setWelcome(int welcome) {
        this.welcome = welcome;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getDetailAddress() {
        return detailAddress;
    }
    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress;
    }
    public String getPhoneNumber() {
        return phoneNumber;
    }
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public int getStat() {
        return stat;
    }
    public void setStat(int stat) {
        this.stat = stat;
    }
    public String getAlchol() {
        return alchol;
    }
    public void setAlchol(String alchol) {
        this.alchol = alchol;
    }
    @Override
    public String toString() {
        return "Member [memberNo=" + memberNo + ", kName=" + kName + ", eName=" + eName + ", jName=" + jName
                + ", myNumber=" + myNumber + ", photo=" + photo + ", birthDay=" + birthDay + ", calendar=" + calendar
                + ", gender=" + gender + ", wedding=" + wedding + ", career=" + career + ", moneyType=" + moneyType
                + ", workingType=" + workingType + ", welcome=" + welcome + ", address=" + address + ", detailAddress="
                + detailAddress + ", phoneNumber=" + phoneNumber + ", email=" + email + ", stat=" + stat + ", alchol="
                + alchol + "]";
    }
    
    
}