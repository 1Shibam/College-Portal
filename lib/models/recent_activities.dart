import 'package:flutter/material.dart';

class RecentActivity {
  String activityName;
  String date; // Holds the name or description of the activity
  String time; // Stores when the activity occurred
  String activityType;
  String actIcon;
  Color background;
  RecentActivity({
    required this.activityName,
    required this.date,
    required this.time,
    required this.activityType,
    required this.actIcon,
    required this.background,
  });
  // static List<CategoryModels> getCategories() {
  // List<CategoryModels> categories = [];

  static List<RecentActivity> getActivity() {
    List<RecentActivity> act = [];
    act.add(RecentActivity(
        activityName: 'Paid Fee',
        date: '30th Ferbruary, 2024',
        time: '10:37 AM',
        activityType: 'Academic Fee',
        background: const Color.fromARGB(255, 182, 222, 255),
        actIcon: ''));

    act.add(RecentActivity(
        activityName: 'Registered for TechWorksop',
        date: '31st April, 2024',
        time: '16:99 PM',
        activityType: 'Events',
        background: const Color.fromARGB(255, 255, 242, 182),
        actIcon: ''));
    act.add(RecentActivity(
        activityName: 'Attended Seminar',
        date: '4th October, 2024',
        time: '11:00 AM',
        activityType: 'Events',
        background: const Color.fromARGB(255, 255, 182, 245),
        actIcon: ''));
    act.add(RecentActivity(
        activityName: 'Filled Exam Form',
        date: '12th December, 2024',
        time: '14:00 PM',
        activityType: 'Examination',
        background: const Color.fromARGB(255, 182, 255, 198),
        actIcon: 'assets/icons/exams.svg'));
    act.add(RecentActivity(
        activityName: 'Checked Attendance',
        date: 'Today',
        time: '9:32 AM',
        activityType: 'Attendance',
        background: const Color.fromARGB(255, 224, 118, 118),
        actIcon: 'assets/icons/attendance.svg'));
    return act;
  }
  // Specifies the type of activity
}
