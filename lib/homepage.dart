import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stuckatbasicslikeanoob/models/category_models.dart';
import 'package:stuckatbasicslikeanoob/models/college_events.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModels> categories = [];
  List<CollegeEvents> events = [];

  void _getEvents() {
    events = CollegeEvents.getCollegeEvents();
  }

  void _getCategories() {
    categories = CategoryModels.getCategories();
  }

  @override
  void initState() {
    super.initState();
    _getCategories();
    _getEvents();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: myAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          seachField(),
          const SizedBox(height: 40),
          categoriesSection(),
          const SizedBox(height: 40),
          _currentEvents(),
        ],
      ),
    );
  }

  Column _currentEvents() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Current Events In College',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 360,
          color: Colors.transparent,
          child: ListView.separated(
              itemCount: events.length,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(left: 24, right: 24),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 24,
                  ),
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  height: 360,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(events[index].image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                );
              }),
        )
      ],
    );
  }

  Column categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Categories',
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 120,
          color: Colors.transparent,
          child: ListView.separated(
              itemCount: events.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 24, right: 24),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 24,
                  ),
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  decoration: BoxDecoration(
                      color: categories[index].boxColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(categories[index].iconPath),
                        ),
                      ),
                      Text(
                        categories[index].name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }

  Container seachField() {
    return Container(
        height: 48,
        margin: const EdgeInsets.only(top: 40, left: 24, right: 24),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 40,
              spreadRadius: 0.0)
        ]),
        child: TextField(
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 51, 2, 2)),
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(179, 194, 190, 190)),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  'assets/icons/searchBar.svg',
                ),
              ),
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const VerticalDivider(
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: .5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/icons/filter.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none),
            )));
  }

  AppBar myAppBar() {
    return AppBar(
      title: const Text(
        'STUDENT DATA',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
            margin: const EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: SvgPicture.asset(
              'assets/icons/arrow.svg',
              height: 150,
              width: 150,
            )),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
              margin: const EdgeInsets.all(16),
              width: 20,
              height: 20,
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SvgPicture.asset(
                'assets/icons/dots.svg',
                height: 50,
                width: 50,
              )),
        )
      ],
    );
  }
}
