import 'package:flutter/material.dart';
import 'package:travel_app/data/post_data.dart';
import 'package:travel_app/model/post_model.dart';

class MySchedule extends StatelessWidget {
  final List<MySchedules> mySchedule;
  final double itemSpacing;

  const MySchedule({super.key, 
    required this.mySchedule,
    this.itemSpacing = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520,
      width: 336,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mySchedule.length,
        itemBuilder: (BuildContext context, int index) {
          MySchedules mySchedule = mySchedules[index];
          return _buildListViewItem(mySchedule, index);
        },
      ),
    );
  }

  Widget _buildListViewItem(MySchedules mySchedule, int index) {
    return Container(
      margin: EdgeInsets.only(top: itemSpacing, bottom: itemSpacing),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 335,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33B4BCC9),
                  offset: Offset(0, 6),
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
          Positioned(
            top: 12,
            left: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                height: 80,
                width: 80,
                image: AssetImage(mySchedule.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 10,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/health.png",
                width: 44,
                height: 44,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            top: 21,
            bottom: 5,
            left: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          size: 16,
                          color: Color(
                            0xFF7D848D,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          mySchedule.date,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D848D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  mySchedule.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1E28),
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/map.png',
                          height: 14,
                          width: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          mySchedule.map,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D848D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 7),
              ],
            ),
          ),
          Positioned(
            top: 30,
            bottom: 20,
            right: 10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.navigate_next_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
