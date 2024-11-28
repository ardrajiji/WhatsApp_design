import 'package:flutter/material.dart';
import 'package:whatsapp/widget/chat.dart';

class ChatHome extends StatelessWidget {
  final List<Map<String, dynamic>> details = [
     {
    "name": "Liya S",
    "image": "assets/users/user1.jpg",
    "calldetails": "23 November,8.47pm",
    "content": "Photo",
    "time": "9.00 am",
    "messagecount": "0",
    "call": "1"
  },
  {
    "name": "Renu S",
    "image": "assets/users/user2.png",
    "calldetails": "26 November,9.10am",
    "content": "Photo",
    "time": "8.20 am",
    "messagecount": "2",
    "call": "0"
  },
  {
    "name": "Job Updates",
    "image": "assets/alumni/job1.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Hey, did you check the documents ?",
    "time": "6.00 am",
    "messagecount": "6",
    "call": "0"
  },
  {
    "name": "Renu S",
    "image": "assets/users/user3.webp",
    "calldetails": "26 November,9.10am",
    "content": "Video call",
    "time": "11.00 pm",
    "messagecount": "1",
    "call": "1"
  },
  {
    "name": "MCA Alumni Group",
    "image": "assets/alumni/alumniG1.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Photo",
    "time": "8.40 pm",
    "messagecount": "3",
    "call": "0"
  },
  {
    "name": "Remya Sethu",
    "image": "assets/users/user4.png",
    "calldetails": "26 November,9.10am",
    "content": "Video call",
    "time": "8.00 pm",
    "messagecount": "0",
    "call": "1"
  },
  {
    "name": "Job Opening",
    "image": "assets/alumni/job2.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Photo",
    "time": "7.54 pm",
    "messagecount": "0",
    "call": "0"
  },
  {
    "name": "Manu J S",
    "image": "assets/users/user5.png",
    "calldetails": "26 November,9.10am",
    "content": "Can we reschedule our meeting?",
    "time": "7.19 pm",
    "messagecount": "0",
    "call": "0"
  },
  {
    "name": "9956794331",
    "image": "assets/users/user6.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Voice call",
    "time": "10.00 am",
    "messagecount": "0",
    "call": "1"
  },
  {
    "name": "BCA Alumni Group",
    "image": "assets/alumni/alumniG2.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Photo",
    "time": "9.30 am",
    "messagecount": "0",
    "call": "0"
  },
  {
    "name": "Hari",
    "image": "assets/users/user7.png",
    "calldetails": "26 November,9.10am",
    "content": "Photo",
    "time": "9.40 am",
    "messagecount": "0",
    "call": "0"
  },
  {
    "name": "Anu S",
    "image": "assets/users/user8.png",
    "calldetails": "26 November,9.10am",
    "content": "Video call missed",
    "time": "9.00 pm",
    "messagecount": "1",
    "call": "0"
  },
  {
    "name": "9936047865",
    "image": "assets/users/user9.png",
    "calldetails": "26 November,9.10am",
    "content": "Congratulations",
    "time": "3.00 pm",
    "messagecount": "0",
    "call": "0"
  },
  {
    "name": "Riya K",
    "image": "assets/users/user10.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Happy Birthday",
    "time": "4.00 pm",
    "messagecount": "0",
    "call": "0"
  }, 
  ];

  ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Search Bar Container
          Container(
            height: 45,
            width: 370,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 239, 237, 237),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.trip_origin_outlined,
                    color: Colors.blueAccent,
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Ask Meta AI or Search',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Chat List
          Expanded(
            child: ListView.builder(
              itemCount: details.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = details[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ChatPage(
                    name: item['name'],
                    image: item['image'],
                    calldetails: item['calldetails'],
                    content: item['content'],
                    time: item['time'],
                    messagecount: item['messagecount'],
                  ),
                );
              },
            ),
          ),
        ],
      ),

      // Floating Action Buttons
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // First FAB
          SizedBox(
            width: 45, // Set the width of the FAB
            height:45, // Set the height of the FAB
            child: FloatingActionButton(
              onPressed: () {
                // Handle action for the FAB
              },
              tooltip: 'Message your assistant',
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19), // Custom FAB shape
              ),
              heroTag: 'fab2', // Unique hero tag
              child: const Icon(Icons.trip_origin, size: 27), // Adjust icon size
            ),
          ),

          const SizedBox(height: 16), // Spacing between FABs
          // Second FAB

          FloatingActionButton(
            onPressed: () {
              // Handle action for the first FAB
            },
            tooltip: 'New chat',
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            heroTag: 'fab1', // Unique hero tag
            child: const Icon(Icons.reviews),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
