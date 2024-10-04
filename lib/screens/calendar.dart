import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/data/post_data.dart';
import 'package:travel_app/home_widget/build_section.dart';
import 'package:travel_app/screens/favorites_places.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/myschedules_widget.dart';

import '../widgets/bottom_convexs.dart';

class CalendarTravel extends StatefulWidget {
  const CalendarTravel({super.key});

  @override
  State<CalendarTravel> createState() => _CalendarTravelState();
}

class _CalendarTravelState extends State<CalendarTravel> {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonBack(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomConvexs()));
                      },
                    ),
                    const Text(
                      "Schedule",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/bell.png",
                        width: 44,
                        height: 44,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: EasyDateTimeLine(
                  initialDate: DateTime.now(),
                  activeColor: const Color(0xff0D6EFD),
                  headerProps: const EasyHeaderProps(
                    monthPickerType: MonthPickerType.switcher,
                    dateFormatter: DateFormatter.custom(DateFormat.MONTH_DAY),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: BuildSection(
                  sectionTitle: "My Schedule",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavoritePlaces(),),);
                  },
                  carousel: MySchedule(mySchedule: mySchedules),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
