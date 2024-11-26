import 'package:flutter/material.dart';
import 'package:whatsapp/views/ViewAllChannel.dart';
import 'package:whatsapp/views/channel.dart'; // Ensure this is the correct import
import 'package:whatsapp/widget/channel.dart'; // Ensure this is the correct import for ChannelUpdate
import 'package:whatsapp/widget/update.dart'; // Ensure this file contains the `UpdatePage` widget.

class UpdateHome extends StatelessWidget {
  final List<Map<String, dynamic>> details = [
    {
      "name": "Job Updates",
      "image": "assets/alumni/job1.jpg",
      "calldetails": "25 November, 8:47 PM",
      "content": "Photo",
      "time": "6:00 PM",
      "numbers": "6",
    },
    {
      "name": "Job Opening",
      "image": "assets/alumni/job2.jpg",
      "calldetails": "26 November, 9:10 AM",
      "content": "Photo",
      "time": "7:00 PM",
      "numbers": "4",
    },
    {
      "name": "IT Referral Jobs",
      "image": "assets/alumni/alumniG2.jpg",
      "calldetails": "26 November, 9:10 AM",
      "content": "Photo",
      "time": "7:00 PM",
      "numbers": "9",
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

  UpdateHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
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
          Expanded(
            child: ListView.builder(
              itemCount: details.length,
              itemBuilder: (context, index) {
                final item = details[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: UpdatePage(
                    name: item['name'],
                    image: item['image'],
                    calldetails: item['calldetails'],
                    content: item['content'],
                    time: item['time'],
                    numbers: item['numbers'],
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Find channels to follow",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: channeldetails.length,
              itemBuilder: (context, index) {
                final item = channeldetails[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: ChannelUpdate(
                    name1: item['name1'],
                    image1: item['image1'],
                    followers: item['followers'],
                    
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
