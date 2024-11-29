import 'package:flutter/material.dart';

class StatusUpdatePAge extends StatelessWidget {
  final String statusImage;
  final String name;
  final String profileImage;

  const StatusUpdatePAge({super.key,
  required this.statusImage,
  required this.name,
  required this.profileImage,
  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Stack(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/status/channel1.jpg"),
              ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Optional background color for contrast
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 3,          // Border width
                  ),
                  borderRadius: BorderRadius.circular(18), // Match the image's rounded corners
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                  child: Image.asset(
                    "assets/status/channel1.jpg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(
              right: 50,
              bottom: 20,
              child: Text("name",
              style: TextStyle(fontSize: 10,
              color: Colors.white),),
            ),
              
            ],
          )
   );
  }
}