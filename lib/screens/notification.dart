import 'package:flutter/material.dart';
import 'package:travel_app/model/img_model.dart';
import 'package:travel_app/profile_widget/imgpro.dart';
import 'package:travel_app/widgets/tab_widget.dart';

class EditMess extends StatefulWidget {
  const EditMess({super.key});

  @override
  State<EditMess> createState() => _EditMessState();
}

class _EditMessState extends State<EditMess> {
  late List<ImageUrlMess> imageMess = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(75, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notification",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Clear all",
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
          bottom: const TabBar(
            labelColor: Color(0xff0D6EFD),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            indicatorColor: Color(0xff0D6EFD),
            tabs: <Widget>[
              Tab(text: "Recent"),
              Tab(text: "Earlier"),
              Tab(text: "Archieved"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TTabBarMess(online: true),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "images/avatarSix.png",
                          width: 55,
                          height: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Super Offer",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xFF1B1E28),
                            ),
                          ),
                          Text(
                            "Get 60% off in our first booking",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF7D848D),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "09:46",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xFF7D848D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ProfileImg(
              online: true,
            ),
          ],
        ),
      ),
    );
  }
}
