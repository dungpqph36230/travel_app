import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/books_model.dart';
import 'package:travel_app/widgets/viewers_widget.dart';

class BookNow extends StatelessWidget {
  const BookNow({super.key, required this.bookViews});
  final List<BookView> bookViews;
  @override
  Widget build(BuildContext context) {
    return Swiper(
      fade: 0.2,
      itemCount: bookViews.length,
      itemBuilder: (BuildContext context, int index) {
        BookView bookView = bookViews[index];
        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(42, 15, 42, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF3E3E3E).withOpacity(0.9),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bookView.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/star.png',
                        height: 16,
                        width: 16,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        bookView.star,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/map.png',
                        height: 16,
                        width: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        bookView.map,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const ViewersWidget(),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    'images/Date.png',
                    height: 16,
                    width: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    bookView.time,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF0D6EFD),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      'See On The Map',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
