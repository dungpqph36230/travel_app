import 'package:flutter/material.dart';
import 'package:travel_app/screens/edit_profile.dart';
import 'package:travel_app/screens/signin.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/bottom_convexs.dart';
import 'package:travel_app/widgets/profile_widgets.dart';

class ProfileTravel extends StatefulWidget {
  const ProfileTravel({super.key});

  @override
  State<ProfileTravel> createState() => _ProfileTravelState();
}

class _ProfileTravelState extends State<ProfileTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
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
                      "Profile",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfile(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        "images/pen.png",
                        width: 44,
                        height: 44,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/boyPro.png"),
                  const SizedBox(height: 10),
                  const Text(
                    "Leonardo",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "Leonardo@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7D848D),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 78,
                width: 336,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(3, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildInfoColumn("Reward Points", "238"),
                    buildVerticalDivider(),
                    buildInfoColumn("Travel Trips", "473"),
                    buildVerticalDivider(),
                    buildInfoColumn("Bucket List", "360"),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Column(
                  children: [
                    buildDivider(),
                    buildProfileMenuItem(
                        Icons.person_outline, "Profile", () {}),
                    buildDivider(),
                    buildProfileMenuItem(
                        Icons.bookmark_border, "Bookmarked", () {}),
                    buildDivider(),
                    buildProfileMenuItemWithImage(
                        "images/pervious.png", "Previous Trips", () {}),
                    buildDivider(),
                    buildProfileMenuItem(Icons.settings, "Settings", () {}),
                    buildDivider(),
                    buildProfileMenuItemWithImage(
                        "images/version.png", "Version", () {}),
                    buildDivider(),
                    buildProfileMenuItem(Icons.logout_rounded, "Log out", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ),
                      );
                    }),
                    buildDivider(),
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
