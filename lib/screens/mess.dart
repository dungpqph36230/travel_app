import 'package:flutter/material.dart';
import 'package:travel_app/profile_widget/imgpro.dart';
import 'package:travel_app/screens/notification.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/bottom_convexs.dart';

class MessTravel extends StatefulWidget {
  const MessTravel({super.key});

  @override
  State<MessTravel> createState() => _MessTravelState();
}

class _MessTravelState extends State<MessTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                      "Messages",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert_outlined,
                        size: 18,
                        color: Color(0xFF1B1E28),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Messages",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditMess(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        "images/pen_book.png",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 48,
                width: 335,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: const TextField(
                  cursorWidth: 1,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Color(0xFF7D848D)),
                    hintText: 'Search for chats & messages',
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
                  ),
                ),
              ),
              ProfileImg(
                online: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
