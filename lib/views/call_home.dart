import 'package:flutter/material.dart';
import 'package:whatsapp/widget/calls.dart';

class CallListHome extends StatelessWidget {
  final List<Map<String, dynamic>> details = [
    {
    "name": "Liya S",
    "image": "assets/users/user1.jpg",
    "calldetails": "23 November,8.47pm",
    "content": "Photo",
    "time": "9.00 am",
    "messagecount": "0",
    "callstatus": "1"
  },
  {
    "name": "Renu S",
    "image": "assets/users/user2.png",
    "calldetails": "26 November,9.10am",
    "content": "Photo",
    "time": "8.20 am",
    "messagecount": "2",
    "callstatus": "0"
  },
  {
    "name": "Aleena George",
    "image": "assets/users/user3.webp",
    "calldetails": "26 November,9.10am",
    "content": "Video call",
    "time": "11.00 pm",
    "messagecount": "1",
    "callstatus": "1"
  },
  {
    "name": "Remya Sethu",
    "image": "assets/users/user4.png",
    "calldetails": "26 November,9.10am",
    "content": "Video call",
    "time": "8.00 pm",
    "messagecount": "0",
    "callstatus": "1"
  },
  
  {
    "name": "Manu J S(2)",
    "image": "assets/users/user5.png",
    "calldetails": "26 November,9.10am",
    "content": "Can we reschedule our meeting?",
    "time": "7.19 pm",
    "messagecount": "0",
    "callstatus": "0"
  },
  {
    "name": "9956794331",
    "image": "assets/users/user6.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Voice call",
    "time": "10.00 am",
    "messagecount": "0",
    "callstatus": "1"
  },
  {
    "name": "Hari",
    "image": "assets/users/user7.png",
    "calldetails": "26 November,9.10am",
    "content": "Photo",
    "time": "9.40 am",
    "messagecount": "0",
    "callstatus": "0"
  },
  {
    "name": "Anu S",
    "image": "assets/users/user8.png",
    "calldetails": "26 November,9.10am",
    "content": "Video call missed",
    "time": "9.00 pm",
    "messagecount": "1",
    "callstatus": "2"
  },
  {
    "name": "9936047865",
    "image": "assets/users/user9.png",
    "calldetails": "26 November,9.10am",
    "content": "Congratulations",
    "time": "3.00 pm",
    "messagecount": "0",
    "callstatus": "2"
  },
  {
    "name": "Riya K",
    "image": "assets/users/user10.jpg",
    "calldetails": "26 November,9.10am",
    "content": "Happy Birthday",
    "time": "4.00 pm",
    "messagecount": "0",
    "callstatus": "0"
  }, 
  
  ];

  CallListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Scrollable Text
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Favourites",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                     GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15,),
                      const Text(
                        " Add Favourite",
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                            ]
                  ),
                  const SizedBox(height: 18,),
                  const Row(children: [
                    Text(
                        "Recent",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  ],),
                  const SizedBox(height: 10,),
                ],
              ),
            ),

            // Scrollable List Items
            Column(
              children: details.map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CallPage(
                    name: item['name'],
                    image: item['image'],
                    calldetails: item['calldetails'],
                    content: item['content'],
                    time: item['time'],
                    messagecount: item['messagecount'],
                    callstatus: item['callstatus'],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the next page when pressed
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const NextPage()),
          // );
        },
        tooltip: 'New call', // Tooltip when FAB is long pressed
        backgroundColor: Colors.green, // Background color
        foregroundColor: Colors.white, // Icon color
        elevation: 10.0, // Shadow below the FAB
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Custom FAB shape
        ),
        //heroTag: 'fab-next-page', // Unique hero tag for animations
        child: const Icon(Icons.add_call), // Icon inside the FAB
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Location of the FAB

    );
  }
}
