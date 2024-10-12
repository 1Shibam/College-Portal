import 'package:flutter/material.dart';

class CollegeEvents {
  String eventName;
  String image;
  Color boxColor;
  String date;
  String time;
  int registFee;
  String location;
  CollegeEvents(
      {required this.eventName,
      required this.image,
      required this.boxColor,
      required this.date,
      required this.time,
      required this.registFee,
      required this.location});
  static List<CollegeEvents> getCollegeEvents() {
    List<CollegeEvents> events = [];
    events.add(CollegeEvents(
        eventName: "Fresher's Party",
        image: 'assets/events/fres.jpg',
        boxColor: const Color.fromARGB(255, 215, 255, 217),
        date: "32nd October, 2025",
        time: "11 AM Onwards",
        registFee: 250,
        location: "Zoom Call"));

    events.add(CollegeEvents(
        eventName: "Sports Event",
        image: 'assets/events/sports.jpg',
        boxColor: const Color.fromARGB(255, 195, 235, 255),
        date: "32nd October, 2025",
        time: "11 AM Onwards",
        registFee: 250,
        location: "Zoom Call"));

    events.add(CollegeEvents(
        eventName: "Tech WorkShop",
        image: 'assets/events/tech.jpg',
        boxColor: const Color.fromARGB(255, 236, 215, 255),
        date: "32nd October, 2025",
        time: "11 AM Onwards",
        registFee: 250,
        location: "Zoom Call"));

    events.add(CollegeEvents(
        eventName: "Cultural Fest",
        image: 'assets/events/cultural fest.jpg',
        boxColor: const Color.fromARGB(255, 255, 215, 215),
        date: "32nd October, 2025",
        time: "11 AM Onwards",
        registFee: 250,
        location: "Zoom Call"));
    return events;
  }
}
