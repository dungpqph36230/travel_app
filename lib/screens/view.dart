import 'package:flutter/material.dart';
import 'package:travel_app/data/book_data.dart';
import 'package:travel_app/widgets/book_now_widget.dart';

class ViewTravel extends StatefulWidget {
  const ViewTravel({super.key});

  @override
  State<ViewTravel> createState() => _ViewTravelState();
}

class _ViewTravelState extends State<ViewTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'images/postThree.jpg',
              height: 780,
              width: 395,
              fit: BoxFit.cover,
              alignment: const Alignment(-0.21, 0.1),
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            left: 20,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 44,
                  width: 208,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new,
                            size: 16, color: Colors.white),
                      ),
                      const Text(
                        "View",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: BookNow(bookViews: bookViews),
            ),
          ),
        ],
      ),
    );
  }
}
