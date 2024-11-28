import 'package:flutter/material.dart';
import 'package:whatsapp/widget/calls.dart';

class CallListHome extends StatelessWidget {
  final List<Map<String, dynamic>> details =
  [
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

 CallListHome({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: details.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final item = details[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CallPage(
                    name: item['name'],
                    image: item['image'],
                    calldetails: item['calldetails'],
                    content: item['content'],
                    time: item['time'],
            
                  ),
                );
              },
            ),
          )
        ]
        
      ),
      
    );
  }
}