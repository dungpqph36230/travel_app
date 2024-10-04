import 'package:flutter/material.dart';
import 'package:travel_app/data/post_data.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/view_favorite.dart';

class FavoritePlaces extends StatefulWidget {
  const FavoritePlaces({super.key});

  @override
  State<FavoritePlaces> createState() => _FavoritePlacesState();
}

class _FavoritePlacesState extends State<FavoritePlaces>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonBack(
                        onTap: () {
                          Navigator.pop(context);                        },
                      ),
                      const Text(
                        "Favorite Places",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const Text(""),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Favorite Places",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ViewFavorite(favoritePlaces: favorites)
            ],
          ),
        ),
      ),
    );
  }
}
