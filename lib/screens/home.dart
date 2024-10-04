import 'package:flutter/material.dart';
import 'package:travel_app/data/post_data.dart';
import 'package:travel_app/home_widget/build_section.dart';
import 'package:travel_app/home_widget/build_title.dart';
import 'package:travel_app/home_widget/build_user_info.dart';
import 'package:travel_app/screens/details.dart';
import 'package:travel_app/screens/favorites_places.dart';
import 'package:travel_app/screens/populars_places.dart';
import 'package:travel_app/screens/popular_packages.dart';
import 'package:travel_app/widgets/favorites_places_widget.dart';
import 'package:travel_app/widgets/package_widget.dart';
import 'package:travel_app/widgets/places_widget.dart';
import 'package:travel_app/widgets/post_widget.dart';

class HomeTravel extends StatefulWidget {
  const HomeTravel({super.key});

  @override
  State<HomeTravel> createState() => _HomeTravelState();
}

class _HomeTravelState extends State<HomeTravel>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BuildUserInfo(),
              const SizedBox(height: 22),
              const BuildTitle(),
              const SizedBox(height: 20),
              BuildSection(
                sectionTitle: "Best Destination",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsTravel()));
                },
                carousel: PostCarousel(
                  posts: posts,
                  pageController: _pageController,
                ),
              ),
              BuildSection(
                sectionTitle: "Popular Places",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PopularPlaces()),
                  );
                },
                carousel: PlacesCarousel(
                  places: places,
                  pageController: _pageController,
                ),
              ),
              BuildSection(
                sectionTitle: "Popular Package",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PackagePopular()));
                },
                carousel: PackageCarausel(
                  packages: packages,
                  pageController: _pageController,
                ),
              ),
              BuildSection(
                sectionTitle: "Favorite Places",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavoritePlaces()));
                },
                carousel: FavoriteCarausel(
                  favorites: favorites,
                  pageController: _pageController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
