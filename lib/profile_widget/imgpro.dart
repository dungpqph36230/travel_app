import 'package:flutter/material.dart';
import 'package:travel_app/data/img_data.dart';
import 'package:travel_app/profile_widget/indicator.dart';
import 'package:travel_app/screens/mess_chats.dart';

class ProfileImg extends StatelessWidget {
  ProfileImg({super.key, required this.online});

  final bool online;
  final ImgUrlItems _controller = ImgUrlItems();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _controller.items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Divider(
              height: 1.5,
              color: Color(0xFFF7F7F9),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessChat(name: _controller.items[index].name),
                  ),
                );
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
                                _controller.items[index].imgUrl,
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
                              _controller.items[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFF1B1E28),
                              ),
                            ),
                            const Text(
                              "You: Hey, will you come to t...",
                              style: TextStyle(
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
                        Icon(
                          Icons.done_all_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(width: 5),
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
            const Divider(
              height: 1.5,
              color: Color(0xFFF7F7F9),
            ),
          ],
        );
      },
    );
  }
}
