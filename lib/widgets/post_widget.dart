import 'package:flutter/material.dart';
import 'package:travel_app/model/post_model.dart';
import 'package:travel_app/widgets/viewers_widget.dart';

class PostCarousel extends StatelessWidget {
  final PageController pageController;
  final List<Post> posts;
  final double itemSpacing;

  const PostCarousel({super.key, 
    required this.pageController,
    required this.posts,
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
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                Post post = posts[index];
                return _buildListViewItem(post, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListViewItem(Post post, int index) {
    return Container(
      width: 240,
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
                width: 240,
                image: AssetImage(post.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 6,
            right: 6,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/menu.png",
                width: 44,
                height: 44,
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
                      post.title,
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
                          post.star,
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
                          post.map,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D848D),
                          ),
                        ),
                      ],
                    ),
                    const ViewersWidget(),
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
