import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:travel_app/profile_widget/edits_textfield.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonBack(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Done",
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
                    "Change Profile Picture",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D6EFD),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const EditTextField(textTitle: "First Name", placeholder: "Leonardo"),
              const EditTextField(textTitle: "Last Name", placeholder: "Ahmed"),
              const EditTextField(textTitle: "Location", placeholder: "Sylhet Bangladesh"),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mobile Number",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1B1E28),
                      ),
                    ),
                    const SizedBox(height: 5),
                    IntlPhoneField(
                      cursorColor: Colors.black,
                      cursorWidth: 1,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 3),
                        hintText: "Your phone number",
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.done,
                            color: Color(0xFF0D6EFD),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F7F9),
                      ),
                    ),
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
