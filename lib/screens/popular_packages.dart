import 'package:flutter/material.dart';
import 'package:travel_app/data/post_data.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/packages_view.dart';

class PackagePopular extends StatefulWidget {
  const PackagePopular({super.key});

  @override
  State<PackagePopular> createState() => _PackagePopularState();
}

class _PackagePopularState extends State<PackagePopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonBack(
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                  const Text(
                    "Popular Package",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const Text(""),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "All Popular Places",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ViewPackage(package: packages)
            ],
          ),
        ),
      ),
    );
  }
}
