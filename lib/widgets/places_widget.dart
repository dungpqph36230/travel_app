import 'package:flutter/material.dart';
import 'package:travel_app/model/post_model.dart';

class PlacesCarousel extends StatelessWidget {
  final PageController pageController;
  final List<Places> places;
  final double itemSpacing;

  const PlacesCarousel({super.key, 
    required this.pageController,
    required this.places,
    this.itemSpacing = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 384,
      width: 392.34,
      padding: const EdgeInsets.fromLTRB(33, 20, 0, 0),
      decoration: BoxDecoration(
        // color: Colors.grey,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 356,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: places.length,
              itemBuilder: (BuildContext context, int index) {
                Places place = places[index];
                return _buildListViewItem(place, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListViewItem(Places places, int index) {
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
                image: AssetImage(places.img),
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
            bottom: 0,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      places.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1B1E28),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'images/star.png',
                          height: 12,
                          width: 12,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          places.star,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF1B1E28),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
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
                          places.map,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D848D),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: places.person,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.blue.shade400,
                            ),
                          ),
                          const TextSpan(
                            text: "Person",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7D848D),
                            ),
                          ),
                        ],
                      ),
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
