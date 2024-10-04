import 'package:flutter/material.dart';
import 'package:travel_app/model/post_model.dart';

class ViewPlaces extends StatelessWidget {
  final List<Places> places;
  final double itemSpacing;

  const ViewPlaces({super.key, 
    required this.places,
    this.itemSpacing = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520,
      width: 336,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: (places.length / 2).ceil(),
        itemBuilder: (BuildContext context, int index) {
          int startIndex = index * 2;
          int endIndex = startIndex + 1;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (startIndex < places.length)
                _buildListViewItem(places[startIndex]),
              if (endIndex < places.length)
                _buildListViewItem(places[endIndex]),
            ],
          );
        },
      ),
    );
  }

  Widget _buildListViewItem(Places places) {
    return Container(
      margin: EdgeInsets.only(top: itemSpacing, bottom: itemSpacing),
      child: Stack(
        children: [
          Container(
            height: 230,
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
                image: AssetImage(places.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 6,
            right: 6,
            child: Container(
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade400.withOpacity(0.3)),
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
          ),
          Positioned(
            bottom: 7,
            left: 9,
            right: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  places.title,
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
                          places.map,
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
                const SizedBox(height: 4),
                Row(
                  children: [
                    Row(
                      children: List.generate(4, (index) {
                        return Image.asset(
                          'images/star.png',
                          height: 10 + (index % 2),
                          width: 10 + (index % 2),
                        );
                      }),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      places.star,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF1B1E28),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: places.person,
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
