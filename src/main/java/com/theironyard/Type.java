package com.theironyard;

/**
 * Created by rickiecashwell on 5/10/17.
 */
public class Type {
    Integer typeId;
    String abbreviations;

    public Type(Integer typeId,String abbreviation){
        this.typeId = typeId;
        this.abbreviations = abbreviation;
    }

    @Override
    public String toString() {
    return abbreviations;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getAbbreviations() {
        return abbreviations;
    }

    public void setAbbreviations(String abbreviations) {
        this.abbreviations = abbreviations;
    }
}
