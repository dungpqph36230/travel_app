import 'package:flutter/material.dart';
import 'package:travel_app/data/post_data.dart';
import 'package:travel_app/model/post_model.dart';
import 'package:travel_app/travelItems/item_popular_package.dart';

class ViewPackage extends StatelessWidget {
  final List<Packages> package;
  final double itemSpacing;

  const ViewPackage({
    super.key,
    required this.package,
    this.itemSpacing = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 620,
      width: 336,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: package.length,
        itemBuilder: (BuildContext context, int index) {
          Packages package = packages[index];
          return _buildListViewItem(package, index);
        },
      ),
    );
  }

  Widget _buildListViewItem(Packages packages, int index) {
    return Container(
      margin: EdgeInsets.only(top: itemSpacing, bottom: itemSpacing),
      child: Stack(
        children: [
          ItemPopularPackage(packages: packages, index: index),
          Positioned(
            top: 4,
            left: 65,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/health.png",
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            top: 18,
            right: 18,
            child: Container(
              width: 44,
              height: 26,
              decoration: BoxDecoration(
                color: const Color(0xFF0D6EFD),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  packages.person,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
