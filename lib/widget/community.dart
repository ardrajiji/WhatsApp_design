import 'package:flutter/material.dart';
import 'package:whatsapp/views/communityhome.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        body: Center(
        child:Container(
      //first row 
      child:  Column(
        children: [
          Card(
            elevation: 1, // Adds shadow for a material look
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2), // Rounds the card edges
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Adds space inside the card
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                       borderRadius: BorderRadius.all(
                        Radius.circular(15), ),
                      color: Colors.grey, // Optional: Add a subtle background
                    ),
                     child: const Center(
                      child: Icon(
                        Icons.groups_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      
                    ),
                  ),

                  const SizedBox(width: 10), // Adds space between the icon and text
                  const Text(
                    "New community",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),


          //second row 
           GestureDetector(
             onTap: () {
            // Navigate to the next page
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const CommunityView ()),
             );
             },
              child: Card(
                elevation: 1, // Adds shadow for a material look
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2), // Rounds the card edges
                ),
                color: Colors.white, // Set the card background color
                child: Padding(
                  padding: const EdgeInsets.all(10.0), // Adds space inside the card
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/alumni/channel3.webp",
                            fit: BoxFit.cover, // Ensures the image fits nicely
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Adds space between the image and text
                      const Expanded(
                        child: Text(
                          "Jobs and Career Pathway ",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          // Third row 
                Card(
                elevation: 2, // Adds shadow for the card
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounds the edges of the card
                ),
               color: Colors.white, // Card background color
               child: Padding(
                padding: const EdgeInsets.all(15.0), // Internal padding for the card
                child:
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
                  children: [
                  GestureDetector(
                    onTap: () {
                      // Perform your desired action, e.g., navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CommunityView()), // Replace with your target page
                      );
                    },
                    child: Row(
                      children: [
                        
                        Container(
                          width: 35, // Adjusted size for better visibility
                          height: 35,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 142, 236, 145),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.campaign,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10), // Adds spacing between icon and text
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Announcements",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 1),
                              Text(
                                "~Prajula: OffCampus hiring for 202...",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Yesterday",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 3),
                            Icon(
                              Icons.notifications,
                              size: 19,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),



                const SizedBox(height: 28), // Spacing between rows
                 Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child:
                  GestureDetector(
                    onTap: () {
                      // Perform your action, e.g., navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CommunityView()), // Replace with your target page
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  )

                ),
                ],
              ),
            ),
          ),

         
        ],
      ),
    )

    ),
    );
  }
}