import 'package:flutter/material.dart';
import 'package:whatsapp/widget/calls.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> details = [
    {
      "name": "Liya S",
      "image": "assets/users/user1.jpg",
      "calldetails": "23 November,8.47pm",
      "content" : "Photo",
      "time" : "9.00 pm",
     
    },
    {
      "name": "Renu S",
      "image": "assets/users/user2.png",
      "calldetails": "7 November,9.30 am",
      "content" : "Photo",
      "time" : "4.00 pm",
     
    },
    
    {
      "name": "Renu S",
      "image": "assets/users/user3.webp",
      "calldetails": "8 June,10.00 am",
      "content" : "Video call",
      "time" : "3.00 pm",
     
    },
    {
      "name": "Remya Sethu",
      "image": "assets/users/user4.png",
      "calldetails": "8 July,8.25 am",
      "content" : "Video call",
      "time" : "3.00 pm",
     
    },
    {
      "name": "Manu J S",
      "image": "assets/users/user5.png",
      "calldetails": "6 November,8.25 am",
      "content" : "Can we reschedule our meeting?",
      "time" : "8.00 pm",
     
    },
    {
      "name": "Nita Manu",
      "image": "assets/users/user6.jpg",
      "calldetails": "24 November,3.47pm",
      "content" : "Video call",
      "time" : "9.00 pm",
     
    },
    {
      "name": "Hari ",
      "image": "assets/users/user7.png",
      "calldetails": "22 November,4.55 am",
      "content" : "Photo",
      "time" : "5.34 pm",
     
    },
    {
      "name": "Anu s ",
      "image": "assets/users/user8.png",
      "calldetails": "20 November,3.10 am",
      "content" : "Video call missed",
      "time" : "5.34 pm",
     
    },
    {
      "name": "Nila H ",
      "image": "assets/users/user9.png",
      "calldetails": "1 November,6.55 am",
      "content" : "Congratulations",
      "time" : "5.34 pm",
     
    },
    
    {
      "name": "Riya K",
      "image": "assets/users/user10.jpg",
      "calldetails": "3 October,8.47pm",
      "content" : "Happy Birthday",
      "time" : "9.00 pm",
     
    },
    {
      "name": "Job Updates",
      "image": "assets/alumni/job1.jpg",
      "calldetails": "25 November,8.47pm",
      "content" : "Hey, did you check the documents I sent?",
      "time" : "6.00 pm",
     
    },
    
    {
      "name": "Job Opnening",
      "image": "assets/alumni/job2.jpg",
      "calldetails": "26 November,9.10am",
      "content" : "Photo",
      "time" : "7.00 pm",
     
    },
    {
      "name": "BCA Alumni Group",
      "image": "assets/alumni/alumniG2.jpg",
      "calldetails": "26 November,9.10am",
      "content" : "Photo",
      "time" : "7.00 pm",
     
    },
    {
      "name": "MCA Alumni Group",
      "image": "assets/alumni/alumniG1.jpg",
      "calldetails": "26 November,9.10am",
      "content" : "Photo",
      "time" : "7.00 pm",
     
    },

  ];
 Home({super.key});

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