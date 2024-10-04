import 'package:flutter/material.dart';
import 'package:travel_app/model/post_model.dart';

class ViewFavorite extends StatelessWidget {
  final List<FavoritePlaces> favoritePlaces;
  final double itemSpacing;

  const ViewFavorite({super.key, 
    required this.favoritePlaces,
    this.itemSpacing = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 620,
      width: 336,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: (favoritePlaces.length / 2).ceil(),
        itemBuilder: (BuildContext context, int index) {
          int startIndex = index * 2;
          int endIndex = startIndex + 1;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (startIndex < favoritePlaces.length)
                _buildListViewItem(favoritePlaces[startIndex]),
              if (endIndex < favoritePlaces.length)
                _buildListViewItem(favoritePlaces[endIndex]),
            ],
          );
        },
      ),
    );
  }

  Widget _buildListViewItem(FavoritePlaces favorites) {
    return Container(
      margin: EdgeInsets.only(top: itemSpacing, bottom: itemSpacing),
      child: Stack(
        children: [
          Container(
            height: 190 ,
            width: 161,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33B4BCC9),
                  offset: Offset(0, 6),
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 5,
            right: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                height: 138,
                width: 151,
                image: AssetImage(favorites.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 6,
            right: 6,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/health.png",
                width: 44,
                height: 44,
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
                  favorites.title,
                  style: const TextStyle(
                    fontSize: 14,
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
                          height: 14,
                          width: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          favorites.map,
                          style: const TextStyle(
                            fontSize: 12,
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
