import 'package:flutter/material.dart';
import 'package:whatsapp/views/ViewAllChannel.dart';
import 'package:whatsapp/widget/channel.dart';
import 'package:whatsapp/widget/status.dart';
import 'package:whatsapp/widget/update.dart';

class UpdateHome extends StatelessWidget {
  final List<Map<String, dynamic>> details = [
    {
      "name": "Job Updates",
      "image": "assets/alumni/job1.jpg",
      "calldetails": "26 November,9.10am",
      "content": "Hey, did you check the documents?",
      "time": "6.00 am",
      "messagecount": "6",
      "callstatus": "0"
    },
    {
      "name": "Job Opening",
      "image": "assets/alumni/job2.jpg",
      "calldetails": "26 November,9.10am",
      "content": "Update it.",
      "time": "7.54 pm",
      "messagecount": "12",
      "callstatus": "0"
    },
    {
      "name": "IT Referral Jobs",
      "image": "assets/alumni/alumniG1.jpg",
      "calldetails": "26 November,9.10am",
      "content": "Photo",
      "time": "8.40 pm",
      "messagecount": "3",
      "callstatus": "0"
    },
  ];

  final List<Map<String, dynamic>> channeldetails = [
    {
      "name1": "Behind Talkies",
      "image1": "assets/alumni/channel1.jpg",
      "followers": "4M followers",
      "category": "Entertainment",
      "status": "Follow",
    },
    {
      "name1": "Tenajaain",
      "image1": "assets/alumni/channel2.jpg",
      "followers": "3.6M followers",
      "category": "Entertainment",
      "status": "Follow",
    },
    {
      "name1": "Hindi Behind Talkies",
      "image1": "assets/alumni/channel3.webp",
      "followers": "4.3M followers",
      "category": "Entertainment",
      "status": "Follow",
    },
  ];

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

  UpdateHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Status",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: statusdetails.length,
                itemBuilder: (context, index) {
                  final item = statusdetails[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Channels",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AllChannel()),
                    );
                  },
                  child: const Text(
                    "Explore   >",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: details.length,
              itemBuilder: (context, index) {
                final item = details[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 9.0),
                  child: UpdatePage(
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
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 20),
              child: Text(
                "Find channels to follow",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: channeldetails.length,
              itemBuilder: (context, index) {
                final item = channeldetails[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 9.0),
                  child: ChannelUpdate(
                    name1: item['name1'],
                    image1: item['image1'],
                    followers: item['followers'],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AllChannel()),
                  );
                },
                child: Container(
                  width: 140,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Explore more",
                      style: TextStyle(fontSize: 15, color: Colors.green),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // First FAB with fixed size
          SizedBox(
            width: 35, // Fixed width
            height: 35, // Fixed height
            child: FloatingActionButton(
              onPressed: () {
                // Handle action for the first FAB
               
              },
              tooltip: 'New text status',
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Fixed radius
              ),
              heroTag: 'fab1', // Unique hero tag
              child: const Icon(Icons.create, size: 25), // Fixed icon size
            ),
          ),
          const SizedBox(height: 25), // Spacing between the FABs

          // Second FAB with fixed size
          SizedBox(
            width: 55, // Fixed width
            height: 55, // Fixed height
            child: FloatingActionButton(
              onPressed: () {
                // Handle action for the second FAB
                
              },
              tooltip: 'New status update',
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              heroTag: 'fab2', // Unique hero tag
              child: const Icon(Icons.photo_camera, size: 30), // Fixed icon size
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
