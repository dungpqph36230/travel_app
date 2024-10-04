import 'package:flutter/material.dart';
import 'package:travel_app/profile_widget/profile_names.dart';
import 'package:travel_app/profile_widget/chats.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';

class MessChat extends StatefulWidget {
  final String name;
  const MessChat({super.key, required this.name});

  @override
  State<MessChat> createState() => _MessChatState();
}

class _MessChatState extends State<MessChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonBack(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ProfileName(selectedName: widget.name,),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 18,
                      color: Color(0xFF1B1E28),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 355,
                height: 630,
                child: ProfileChat(
                  online: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 48,
                    width: 275,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: const TextField(
                      cursorWidth: 1,
                      cursorColor: Colors.black,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        suffixIcon: ImageIcon(AssetImage('images/Frame.png'),
                            color: Color(0xFF7D848D)),
                        hintText: 'Type you message',
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
                  const SizedBox(width: 28),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF0D6EFD),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic_none,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
