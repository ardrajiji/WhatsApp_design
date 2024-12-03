import 'package:flutter/material.dart';
import 'package:whatsapp/widget/status.dart';

class StatusHome extends StatelessWidget {
  final List<Map<String, dynamic>> statusdetails = [
    {
    "name": "Liya S",
    "profileImage": "assets/users/user1.jpg",
    "statusImage": "assets/status/status1.jpg",
    "status": "0",
  },
  {
    "name": "Hari",
    "profileImage": "assets/users/user7.png",
    "statusImage": "assets/status/status2.jpg",
    "status": "0",
  },
  
  {
    "name": "Aleena George",
    "profileImage": "assets/users/user3.webp",
    "statusImage": "assets/status/status3.jpg",
    "status": "0",
  },
  {
    "name": "Maya k",
    "profileImage": "assets/users/user6.jpg",
   "statusImage": "assets/status/status6.jpg",
    "status": "0",
  },
  {
    "name": "Remya Sethu",
    "profileImage": "assets/users/user4.png",
    "statusImage": "assets/status/status4.jpg",
    "status": "1",
  },
  
  {
    "name": "Manu J S",
    "profileImage": "assets/users/user5.png",
   "statusImage": "assets/status/status5.jpg",
    "status": "1",
  },
  
  {
    "name": "Renu S",
    "profileImage": "assets/users/user2.png",
    "statusImage": "assets/status/status2.jpg",
    "status": "1",
  },
  {
    "name": "Anu S",
    "profileImage": "assets/users/user8.png",
    "statusImage": "assets/status/status8.jpg",
    "status": "1",
  },
    
  ];

 StatusHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Column(
    children: [
    SizedBox(
      height: 120, // Define a fixed height for horizontal ListView
      child: ListView.builder(
        itemCount: statusdetails.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = statusdetails[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: .08),
            child: StatusUpdatePAge(
              name: item['name'],
              statusImage: item['statusImage'],
              profileImage: item['profileImage'],
              status: item['status'],
            ),
          );
        },
      ),
    ),
    
    ],
   ),
   
  );
  }
}
