import 'package:flutter/material.dart';

class StatusUpdatePAge extends StatelessWidget {
  final String statusImage;
  final String name;
  final String profileImage;
  final String status;

  const StatusUpdatePAge({super.key,
  required this.statusImage,
  required this.name,
  required this.profileImage,
  required this.status,
  
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
            child: Stack(
              children: [
               
                 Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(27)),
                    child: Image.asset(statusImage,
                    width: 100,
                    height: 200,),
                  ),
                ),
                
                Positioned(
                  top: 5,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black, 
                      border: Border.all(
                        color: status == '0' ?  Colors.green : Colors.white, 
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(25), 
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                       profileImage,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
               
                 Positioned(
                  right: 50, 
                  bottom: 10,
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
         }
}