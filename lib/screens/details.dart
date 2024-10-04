import 'package:flutter/material.dart';
import 'package:travel_app/screens/view.dart';
import 'package:travel_app/sign_in_up_widget/build_sign_up_button.dart';
import 'package:travel_app/widgets/read_moed_texts.dart';
import 'package:travel_app/widgets/tour_all_widget.dart';
import 'package:travel_app/widgets/tour_infor_widget.dart';

class DetailsTravel extends StatefulWidget {
  const DetailsTravel({super.key});

  @override
  State<DetailsTravel> createState() => _DetailsTravelState();
}

class _DetailsTravelState extends State<DetailsTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const SizedBox(),
            expandedHeight: 380.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Positioned(
                    child: Image.asset(
                      'images/postOne.jpg',
                      height: 450,
                      width: 393,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            "Details",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "images/menu.png",
                              width: 44,
                              height: 44,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  width: 303,
                  height: 460,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 36,
                                height: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0x337D848D),
                                ),
                              ),
                            ],
                          ),
                          const TourInfor(),
                          const SizedBox(
                            height: 20,
                          ),
                          const TourAll(),
                          const SizedBox(height: 22),
                          const Text(
                            "About Destination",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1B1E28),
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ReadMoedText(
                                  text:
                                      "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday, to the Greek ETC Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday",
                                  maxLength: 185,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 14),
                          BuildSignButton(
                            signButton: "Book Now",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ViewTravel(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
