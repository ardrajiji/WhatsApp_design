import 'package:flutter/material.dart';

class StatusUpdatePAge extends StatelessWidget {
  final String statusImage;
  final String name;
  final String profileImage;
  final String status;

  const StatusUpdatePAge({super.key,
  required this.statusImage,
  required this.name,
  required this.profileImage,
  required this.status,
  
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
            child: Stack(
              children: [
                // Background Image
                 Container(
                  //width: 100,
                  //height: 200,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(statusImage,
                  width: 100,
                  height: 200,),
                ),
                // Overlay image at the top-right corner
                Positioned(
                  top: 20,
                  left: 10, // Aligning it on the right side
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Optional background color for contrast
                      border: Border.all(
                        color: Colors.green, // Border color
                        width: 3, // Border width
                      ),
                      borderRadius: BorderRadius.circular(25), // Match the image's rounded corners
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                       profileImage,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // Text positioned at the bottom-right corner
                 Positioned(
                  right: 340, // Aligning it on the right side
                  bottom: 25, // Adjusting the vertical alignment
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
         }
}