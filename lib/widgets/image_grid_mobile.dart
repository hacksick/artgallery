import 'package:flutter/material.dart';

class ImageGridMobile extends StatelessWidget {
  const ImageGridMobile({super.key});

  // List of image paths from assets
  static const List<String> imagePaths = [
    "assets/images/8.jpg",
    "assets/images/4.jpg",
    "assets/images/3.jpg",
    "assets/images/5.jpg",
    "assets/images/7.jpg",
    "assets/images/6.jpg",
    "assets/images/2.jpg",
    "assets/images/1.jpg",
    "assets/images/9.jpg", // Ensure you have 9 images in the assets folder
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
      child: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(), // Prevent scrolling
        shrinkWrap: true, // Ensures grid doesn't overflow
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 images per row
          crossAxisSpacing: 10,
          mainAxisSpacing: 40,
          childAspectRatio: 1, // Keeps images square
        ),
        itemCount: imagePaths.length, // Display exactly 9 images
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
