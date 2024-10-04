import 'package:flutter/material.dart';
import 'package:travel_app/model/post_model.dart';

class FavoriteCarausel extends StatelessWidget {
  final PageController pageController;
  final List<FavoritePlaces> favorites;
  final double itemSpacing;

  const FavoriteCarausel({super.key, 
    required this.pageController,
    required this.favorites,
    this.itemSpacing = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 384,
      width: 392.34,
      padding: const EdgeInsets.fromLTRB(33, 20, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 356,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                FavoritePlaces favorite = favorites[index];
                return _buildListViewItem(favorite, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListViewItem(FavoritePlaces favorite, int index) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(
          left: index == 0 ? 0 : itemSpacing, right: itemSpacing),
      child: Stack(
        children: [
          Container(
            height: 284,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 3),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                height: 280,
                width: 260,
                image: AssetImage(favorite.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/health.png",
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            bottom: 7,
            left: 9,
            right: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favorite.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1E28),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/map.png',
                          height: 16,
                          width: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          favorite.map,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D848D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
