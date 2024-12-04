import 'package:flutter/material.dart';

class StatusUpdatePAge extends StatelessWidget {
  final String statusImage;
  final String name;
  final String profileImage;
  final String status;

  const StatusUpdatePAge({
    super.key,
    required this.statusImage,
    required this.name,
    required this.profileImage,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    // Fetch screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: [
          // Background status image
          Container(
            width: screenWidth * 0.2 + 15, // Responsive width (50% of screen width)
            height: screenHeight * 0.2, // Responsive height (30% of screen height)
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                statusImage,
                width: screenWidth * 0.5,
                height: screenHeight * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Profile image positioned
          Positioned(
            top: screenHeight * 0.01, // Adjust based on screen height
            left: screenWidth * 0.03, // Adjust based on screen width
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: status == '0' ? Colors.green : Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                child: Image.asset(
                  profileImage,
                  width: screenWidth * 0.1, // Adjust profile image size
                  height: screenWidth * 0.1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Name positioned at the bottom
          Positioned(
            left: screenWidth * 0.03,
            right: screenWidth * 0.1, // Adjust position based on screen width
            bottom: screenHeight * 0.02, // Adjust position based on screen height
            child: Text(
              name,
              style: TextStyle(
                fontSize: screenWidth * 0.03, // Responsive font size
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
