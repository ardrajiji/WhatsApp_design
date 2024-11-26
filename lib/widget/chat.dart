import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  
  final String image;
  final String name;
  final String calldetails;
  final String content;
  final String time;
  const ChatPage({
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
    return  Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Expanded( 
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
                  const SizedBox(height: 4), 
                  Row(
                    children: [
                       const Icon(
                        Icons.done_all,
                        color: Colors.green,
                        size: 15,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        content,
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
            Text(time,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ) ,),
          ],
        ),
      ),
    );
  }
}