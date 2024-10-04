import 'package:flutter/material.dart';
import 'package:travel_app/model/post_model.dart';

class SearchPlaces extends StatelessWidget {
  final List<SearchPlace> searchPlaces;
  final double itemSpacing;

  const SearchPlaces({
    super.key,
    required this.searchPlaces,
    this.itemSpacing = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: (searchPlaces.length / 2).ceil(),
        itemBuilder: (BuildContext context, int index) {
          int startIndex = index * 2;
          int endIndex = startIndex + 1;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (startIndex < searchPlaces.length)
                _buildListViewItem(searchPlaces[startIndex]),
              if (endIndex < searchPlaces.length)
                _buildListViewItem(searchPlaces[endIndex]),
            ],
          );
        },
      ),
    );
  }

  Widget _buildListViewItem(SearchPlace searchPlaces) {
    return Container(
      margin: EdgeInsets.only(top: itemSpacing, bottom: itemSpacing),
      child: Stack(
        children: [
          Container(
            height: 216,
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
                image: AssetImage(searchPlaces.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: -6,
            right: -3,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/health.png",
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            bottom: 9,
            left: 9,
            right: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searchPlaces.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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
                          searchPlaces.map,
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
                const SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: searchPlaces.person,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.blue.shade400,
                        ),
                      ),
                      const TextSpan(
                        text: "Person",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF7D848D),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
