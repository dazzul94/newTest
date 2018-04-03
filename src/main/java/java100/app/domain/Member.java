package java100.app.domain;

public class Member {
    //기본정보
    int memberNo;
    String kName;
    String eName;
    String jName;
    String myNumber1; //주민번호
    String myNumber2; //주민번호
    String photo; 
    String originalFilename;
    String preShortFilename;
    String year;
    String month;
    String day;
    String calendar; //양력(1), 음력(2) 선택
    String gender; //남(1),여(2)
    String wedding; //기혼(1), 미혼(2)
    String career; //년차
    String moneyType; //급여 지급유형
    String workingType; //희망직무
    String welcome; //입사유형
    String address;
    String detailAddress;
    String phoneNumber1;
    String phoneNumber2;
    String phoneNumber3;
    String email;
    String stat; //기술등급
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
    public String getMyNumber1() {
        return myNumber1;
    }
    public void setMyNumber1(String myNumber1) {
        this.myNumber1 = myNumber1;
    }
    public String getMyNumber2() {
        return myNumber2;
    }
    public void setMyNumber2(String myNumber2) {
        this.myNumber2 = myNumber2;
    }
    public String getPhoto() {
        return photo;
    }
    public void setPhoto(String photo) {
        this.photo = photo;
    }
    public String getOriginalFilename() {
        return originalFilename;
    }
    public void setOriginalFilename(String originalFilename) {
        this.originalFilename = originalFilename;
    }
    public String getYear() {
        return year;
    }
    public void setYear(String year) {
        this.year = year;
    }
    public String getMonth() {
        return month;
    }
    public void setMonth(String month) {
        this.month = month;
    }
    public String getDay() {
        return day;
    }
    public void setDay(String day) {
        this.day = day;
    }
    public String getCalendar() {
        return calendar;
    }
    public void setCalendar(String calendar) {
        this.calendar = calendar;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getWedding() {
        return wedding;
    }
    public void setWedding(String wedding) {
        this.wedding = wedding;
    }
    public String getCareer() {
        return career;
    }
    public void setCareer(String career) {
        this.career = career;
    }
    public String getMoneyType() {
        return moneyType;
    }
    public void setMoneyType(String moneyType) {
        this.moneyType = moneyType;
    }
    public String getWorkingType() {
        return workingType;
    }
    public void setWorkingType(String workingType) {
        this.workingType = workingType;
    }
    public String getWelcome() {
        return welcome;
    }
    public void setWelcome(String welcome) {
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
    public String getPhoneNumber1() {
        return phoneNumber1;
    }
    public void setPhoneNumber1(String phoneNumber1) {
        this.phoneNumber1 = phoneNumber1;
    }
    public String getPhoneNumber2() {
        return phoneNumber2;
    }
    public void setPhoneNumber2(String phoneNumber2) {
        this.phoneNumber2 = phoneNumber2;
    }
    public String getPhoneNumber3() {
        return phoneNumber3;
    }
    public void setPhoneNumber3(String phoneNumber3) {
        this.phoneNumber3 = phoneNumber3;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getStat() {
        return stat;
    }
    public void setStat(String stat) {
        this.stat = stat;
    }
    public String getAlchol() {
        return alchol;
    }
    public void setAlchol(String alchol) {
        this.alchol = alchol;
    }
    
    public String getPreShortFilename() {
        return preShortFilename;
    }
    public void setPreShortFilename(String preShortFilename) {
        this.preShortFilename = preShortFilename;
    }
    @Override
    public String toString() {
        return "Member [memberNo=" + memberNo + ", kName=" + kName + ", eName=" + eName + ", jName=" + jName
                + ", myNumber1=" + myNumber1 + ", myNumber2=" + myNumber2 + ", photo=" + photo + ", originalFilename="
                + originalFilename + ", preShortFilename=" + preShortFilename + ", year=" + year + ", month=" + month
                + ", day=" + day + ", calendar=" + calendar + ", gender=" + gender + ", wedding=" + wedding
                + ", career=" + career + ", moneyType=" + moneyType + ", workingType=" + workingType + ", welcome="
                + welcome + ", address=" + address + ", detailAddress=" + detailAddress + ", phoneNumber1="
                + phoneNumber1 + ", phoneNumber2=" + phoneNumber2 + ", phoneNumber3=" + phoneNumber3 + ", email="
                + email + ", stat=" + stat + ", alchol=" + alchol + "]";
    }
   
    
    
}