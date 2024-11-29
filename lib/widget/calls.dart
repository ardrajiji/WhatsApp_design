import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
 final String image;
  final String name;
  final String calldetails;
  final String content;
  final String time;
  final String messagecount;
  final String callstatus;
  const CallPage({
    super.key,
     required this.image,
    required this.name,
    required this.calldetails,
    required this.content,
    required this.time,
    required this.messagecount,
    required this.callstatus,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children properly
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                image,
                width: screenWidth * 0.1 + 10,
                height: screenHeight * 0.04,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded( // To make the content fit within the available space
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        color: (callstatus == '0') ? Colors.red : Colors.black,
                      ),
                    ),

                  const SizedBox(height: 4), // Add spacing
                  Row(
                    children: [
                      callstatus == '0' ? 
                      const Icon(Icons.call_made, color: Colors.red,size: 18,) : 
                      const Icon(Icons.call_received,color: Colors.green,size: 18,),


                      // callstatus == '1' ? const Icon(Icons.call_received, color: Colors.green,) : 
                      // const Icon(Icons.call_received,),
                      // callstatus == '2' ? const Icon(Icons.call_made, color: Colors.green) : 
                      // const Icon(Icons.call_received,color: Colors.green,),

                      const SizedBox(width: 4),
                      Text( 
                        calldetails,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            callstatus == '1' ? 
              const Icon(
              Icons.videocam_outlined,
              size: 28,
              color: Color.fromARGB(255, 26, 25, 25),) : 

              const Icon(Icons.phone_outlined,
              color: Color.fromARGB(255, 14, 14, 14),
              size: 25,),

          ],
        ),
      ),
    );
  }
}
