package com.theironyard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class GroupRepository {
    @Autowired
    JdbcTemplate template;
    // list List<String> abr
    public List<Type> types(Integer id){
        return template.query("SELECT * FROM meeting_type, type WHERE meeting_type.meetingid = ? and type.id = typeid",
                new Object[]{id},
                (ResultSet, row) -> new Type(
                      ResultSet.getInt("id"),
                      ResultSet.getString("abbreviation")
                )
                );
    }
    public List<Group> listGroups(String day){
        List<Group> groups = template.query("SELECT DISTINCT " +
                        " meeting.id, meeting.name, meeting.meetingtime, meeting.address," +
                        " meeting.meetingday,meeting.city, meeting.latitude, meeting.longitude" +
                        " FROM meeting" +
                        " WHERE meeting.meetingday = ? and meeting.name<>''" +
                        " order by meetingtime LIMIT 50",
                new Object[]{day},
                (ResultSet, row) -> new Group(
                        ResultSet.getInt("id"),
                        ResultSet.getString("name"),
                        ResultSet.getString("address"),
                        ResultSet.getString("meetingtime"),
                        ResultSet.getString("meetingday"),
                        ResultSet.getString("city"),
                        types(ResultSet.getInt("id")),
                        ResultSet.getDouble("latitude"),
                        ResultSet.getDouble("longitude")
                )
        );
        return groups;
    }
    public List<Group> quickFind(String day){
        List<Group> groups = template.query("SELECT * FROM(SELECT * FROM (SELECT DISTINCT ON (meeting.name)" +
                        " meeting.id, meeting.name, meeting.meetingtime, meeting.location," +
                        " meeting.meetingday,meeting.city, meeting.latitude, meeting.longitude" +
                        " FROM meeting " +
                        " WHERE lower(meeting.meetingday) = lower(?) and meeting.name<>''" +
                        " order by meeting.name)p Where (sqrt(POWER(longitude - -78.6401854, 2) + power(latitude - 35.7754742, 2)) * 69) <= 10 and (meetingtime > LOCALTIME))a order by meetingtime LIMIT 5",
                new Object[]{day},
                (ResultSet, row) -> new Group(
                        ResultSet.getInt("id"),
                        ResultSet.getString("name"),
                        ResultSet.getString("location"),
                        ResultSet.getTime("meetingtime").toString(),
                        ResultSet.getString("meetingday"),
                        ResultSet.getString("city"),
                        types(ResultSet.getInt("id")),
                        ResultSet.getDouble("latitude"),
                        ResultSet.getDouble("longitude")
                )
        );
        return groups;
    }

    public Group specificGroup(Integer id) {
        return template.queryForObject("SELECT DISTINCT " +
                        " meeting.id, meeting.name, meeting.meetingtime, meeting.address," +
                        " meeting.meetingday,meeting.city, meeting.latitude, meeting.longitude" +
                        " FROM meeting WHERE meeting.id = ? and meeting.city IS NOT NULL " +
                        " order by meeting.meetingtime" ,
            new Object[]{id},
                (ResultSet, row) -> new Group(
                        ResultSet.getInt("id"),
                        ResultSet.getString("name"),
                        ResultSet.getString("address"),
                        ResultSet.getString("meetingtime"),
                        ResultSet.getString("meetingday"),
                        ResultSet.getString("city"),
                        types(ResultSet.getInt("id")),
                        ResultSet.getDouble("latitude"),
                        ResultSet.getDouble("longitude")

                ));
    }

}
