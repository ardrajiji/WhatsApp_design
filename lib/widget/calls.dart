import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  final String image;
  final String name;
  final String calldetails;
  final String content;
  final String time;

  const CallPage({
    super.key,
    required this.image,
    required this.name,
    required this.calldetails,
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children properly
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                image,
                width: screenWidth * 0.1 + 10,
                height: screenHeight * 0.04,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded( // To make the content fit within the available space
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4), // Add spacing
                  Row(
                    children: [
                      const Icon(
                        Icons.call_made,
                        color: Colors.green,
                        size: 15,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        calldetails,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.video_call_outlined,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
