import 'package:flutter/material.dart';
import 'package:travel_app/data/img_data.dart';
import 'package:travel_app/profile_widget/indicator.dart';
// import 'package:travel_app/screens/mess_chats.dart';

class TTabBarMess extends StatelessWidget {
  TTabBarMess({super.key, required this.online});

  final bool online;
  final ImageUrlMessItems _controller = ImageUrlMessItems();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _controller.imageItems.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: 356,
              height: 0.5,
              color: Colors.grey.shade200,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const MessChat(),
                //   ),
                // );
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                _controller.imageItems[index].imageUrl,
                                width: 55,
                                height: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 3,
                              child: online
                                  ? const OnlineIndicator()
                                  : Container(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _controller.imageItems[index].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFF1B1E28),
                              ),
                            ),
                            Text(
                              _controller.imageItems[index].description,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF7D848D),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
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
            ),
            const SizedBox(height: 10),
            Divider(
              height: 1,
              color: Colors.grey.shade200,
            )
          ],
        );
      },
    );
  }
}
