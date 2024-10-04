import 'package:flutter/material.dart';
import 'package:travel_app/data/post_data.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/bottom_convexs.dart';
import 'package:travel_app/widgets/search_widget.dart';

class SearchTravel extends StatefulWidget {
  const SearchTravel({super.key});

  @override
  State<SearchTravel> createState() => _SearchTravelState();
}

class _SearchTravelState extends State<SearchTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 12, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonBack(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomConvexs()));
                    }),
                    const Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFF0D6EFD),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(42, 0, 42, 0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: const TextField(
                  cursorColor: Colors.black,
                  cursorWidth: 1,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Color(0xFF7D848D)),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Color(0xFF7D848D),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 0, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0xFFF7F7F9),
                    suffixIcon: ImageIcon(
                      AssetImage('images/mic.png'),
                      size: 14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 22, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Search Places",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SearchPlaces(searchPlaces: searchPlaces),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
