import 'package:flutter/material.dart';
import 'package:travel_app/data/img_data.dart';

class ProfileChat extends StatelessWidget {
  ProfileChat({super.key, required bool online});

  final ImgUrlItems _controller = ImgUrlItems();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _controller.items.length,
      itemBuilder: (context, index) {
        final item = _controller.items[index];

        final bool isMyMessage = item.name == "Sajib Rahman";
        final bool isMyAvatar = item.imgUrl == "images/avatarFor.png";

        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Stack(
                  children: [
                    if (!isMyAvatar)
                      Positioned(
                        top: 0,
                        right: isMyMessage ? 0 : null,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item.imgUrl),
                        ),
                      ),
                    Container(
                      margin: EdgeInsets.only(right: isMyMessage ? 0 : 0, left: isMyMessage ? 0 : 50),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isMyMessage ? const Color(0XFFE5F4FF) : const Color(0xFFF7F7F9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                        children: [
                          Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                          Text(item.textChat),
                          Text(item.timeChat, style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12, color: Color(0xFF7D848D)),),
                          const Icon(Icons.done_all_outlined, color: Color(0xFF19B000),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}