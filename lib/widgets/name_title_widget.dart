import 'package:flutter/material.dart';
import 'package:travel_app/screens/favorites_places.dart';

class NameTitle extends StatefulWidget {
  const NameTitle({super.key, required String nameTitle});

  @override
  State<NameTitle> createState() => _NameTitleState();
}

class _NameTitleState extends State<NameTitle> {
  final List<NameTitle> nameTitleList = [
    const NameTitle(nameTitle: "Best Destination"),
    const NameTitle(nameTitle: "Popular Places"),
    const NameTitle(nameTitle: "Popular Package"),
    const NameTitle(nameTitle: "Favorite Places"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: nameTitleList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nameTitleList[index].toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoritePlaces(),
                    ),
                  );
                },
                child: const Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF0D6EFD),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
