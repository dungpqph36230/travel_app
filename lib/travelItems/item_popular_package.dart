import 'package:flutter/material.dart';
import 'package:travel_app/model/post_model.dart';
import 'package:travel_app/widgets/viewers_widget.dart';

class ItemPopularPackage extends StatelessWidget {
  final Packages packages;
  final int index;
  const ItemPopularPackage({
    super.key,
    required this.packages,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 336,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Color(0x33B4BCC9),
            offset: Offset(0, 6),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image(
              height: 116,
              width: 95,
              image: AssetImage(packages.img),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                packages.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1B1E28),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        size: 16,
                        color: Color(
                          0xFF7D848D,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        packages.date,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF7D848D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 6),
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
                    packages.star,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1B1E28),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  const ViewersWidget(),
                  const SizedBox(width: 5),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: packages.joinPerson,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7D848D),
                          ),
                        ),
                        const TextSpan(
                          text: " Person Joined",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xFF7D848D,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
