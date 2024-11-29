import 'package:flutter/material.dart';

class ChannelUpdate extends StatelessWidget {
  final String image1;
  final String name1;
  final String followers;

  const ChannelUpdate({
  super.key,
  required this.image1,
  required this.name1,
  required this.followers,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              image1,
              width: screenWidth * 0.1 + 10,
              height: screenHeight * 0.04,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded( 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name1,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4), 
                Row(
                  children: [
                     
                    const SizedBox(width: 4),
                    Text(
                      followers,
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
          Column(
            children: [
              Container(
                width: 70,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                  color: Color.fromARGB(255, 176, 241, 179),
                ),
                child: const Center(
                  child: Text("Follow",style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),),
                ),
              )
            ],
          ),
        ],
      ),

    );
  }
}