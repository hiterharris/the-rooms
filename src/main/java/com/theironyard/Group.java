package com.theironyard;

import java.text.DecimalFormat;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

public class Group {
    Integer id;
    String name;
    String location;
    String time;
    String day;
    List<Type> type;
    String city;
    double latitude;
    double longitude;
    String miles;
    LocalTime timeconverter;
    DateTimeFormatter inputformatter = DateTimeFormatter.ofPattern("kk:mm:ss");
    DateTimeFormatter outputformatter = DateTimeFormatter.ofPattern("hh:mm a");
    DecimalFormat formatter = new DecimalFormat("#0.00");
    public Group(Integer id, String name, String location, String time, String day, String city, List<Type> types, double latitude, double longitude) {
        this.id = id;
        this.name = name;
        this.location = location;
        LocalTime templateTime = timeconverter.parse(time, inputformatter);
        this.time = outputformatter.format(templateTime);
        this.day = day;
        this.city = city;
        this.type = types;
        this.miles = formatter.format(Math.sqrt(Math.pow(longitude - -78.6401854, 2) + Math.pow(latitude - 35.7754742, 2)) * 69);

    }

    public Group(){

    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public void setMiles(String miles){
    this.miles = miles;
    }
    public String getMiles(){
        return this.miles;
    }
    public String getTime() {
        return time;
    }
    public void setTime(String time) {
        this.time = time;
    }
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {this.id = id;}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public List<Type> getType()
    {
        return type;
    }

    public void setType(List<Type> type)
    {
        this.type = type;
    }

    public String getFormattedAdrress(){
        return (this.location+" "+this.city+" "+"North Carolina").replaceAll(" ","+");
    }


    @Override
    public String toString() {
        return "Group{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", location='" + location + '\'' +
                ", time='" + time + '\'' +
                ", day='" + day + '\'' +
                ", type=" + type +
                ", city='" + city + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", miles='" + miles + '\'' +
                ", timeconverter=" + timeconverter +
                ", inputformatter=" + inputformatter +
                ", outputformatter=" + outputformatter +
                ", formatter=" + formatter +
                '}';
    }
}