import 'package:flutter/material.dart';
import 'package:whatsapp/views/call_home.dart';
import 'package:whatsapp/views/chat_home.dart';
import 'package:whatsapp/views/updatehome.dart';
import 'package:whatsapp/widget/community.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Updated app bar titles to include Community
  final List<String> _appBarTitles = [
    'WhatsApp',
    'Updates',
    'Communities',
    'Calls',
  ];

  // Updated body content to include Community
  final List<Widget> _bodies = [
    Center(child: ChatHome()),
    Center(child: UpdateHome()),
   const Center(child: CommunityPage()),
    Center(child: CallListHome()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(
            _appBarTitles[_selectedIndex],
            style: TextStyle(
            fontSize: _selectedIndex == 0 ? 24.0 : 24.0, // Larger text for the first tab
            fontWeight:_selectedIndex == 0 ? FontWeight.bold : FontWeight.normal, // Bold for the first tab
            color: _selectedIndex == 0 ? Colors.green : Colors.black, // Different colors for different tabs
        ),
      ),
        backgroundColor: Colors.white,
        actions: [
          if (_selectedIndex == 0) ...[
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {
                // Handle search action
              },
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
              if (value == 'New Group') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewGroup()),
                );
              } else if (value == 'New Broadcast') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewBroadcast()),
                );
              } else if (value == 'Linked devices') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LinkedDevices()),
                );
              } else if (value == 'Starred messages') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StarredMessages()),
                );
              } else if (value == 'Payments') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Payments()),
                );
              } else if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return {'New Group', 'New Broadcast', 'Linked devices', 'Starred messages', 'Payments', 'Settings'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
             color: Colors.white,
          ),
          ] else if (_selectedIndex == 1) ...[
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {
               
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                
              },
            ),
             PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
              return {'Status Privacy', 'Create channel','Settings'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                 );
               }).toList();
             },
              onSelected: (value) {
              if (value == 'Status Privacy') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewGroup()),
                );
              } else if (value == 'Create channel') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewBroadcast()),
                );
              } else if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              }
            },
             color: Colors.white,
          ),
            
          ] else if (_selectedIndex == 2) ...[
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {
                // Handle Community action
              },
            ),
             PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
              return {'Settings'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                 );
               }).toList();
             },
              onSelected: (value) {
              if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              } 
            },
            color: Colors.white,
          ),
          ] else if (_selectedIndex == 3) ...[
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {
               
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                
              },),
              PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
              return {'Clear call log', 'Settings'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                 );
               }).toList();
             },
              onSelected: (value) {
              if (value == 'Clear call log') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewGroup()),
                );
              } else if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              }
            },
             color: Colors.white,
          ),
          ],
        ],
      ),
      body: _bodies[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 90.0,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
            icon: Stack(
                    alignment: Alignment.center,  // Aligns the container to the center of the icon
                    children: [
                      Transform.rotate(
                        angle: 0 / 2,  // Rotate by 90 degrees (π/2 radians)
                        child: _buildIcon(Icons.chat_outlined, 0),
                      ),
                      Positioned(
                        top: 0,  // Position the container at the top of the icon
                        left: 40,
                        child: Container(
                          width: 17,
                          height: 17,
                          decoration: const BoxDecoration(
                            color: Colors.green,  // Change to your desired color
                            shape: BoxShape.circle,  // Circle shape for the container
                          ),
                          child: const Center(
                            child: Text("5",
                            style: TextStyle(fontSize: 12, color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
          label: 'Chats',
          ),

            BottomNavigationBarItem(
              icon: _buildIcon(Icons.autorenew_outlined, 1),
              label: 'Updates', 
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.groups_outlined, 2),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.call_outlined, 3),
              label: 'Calls',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromARGB(255, 58, 56, 56),
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          selectedLabelStyle: const TextStyle(
            fontSize: 15, // Change font size of selected label
            fontWeight: FontWeight.bold, // Bold selected label
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15, // Change font size of unselected label
            color: Colors.grey, // Change color for unselected label
          ),
        ),
      ),
    );
  }

  // Helper method to build the icon with a greenish background when selected
  Widget _buildIcon(IconData icon, int index) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: _selectedIndex == index ? const Color.fromARGB(255, 204, 243, 205) : Colors.transparent, // Green background when selected
        borderRadius: const BorderRadius.all(Radius.circular(20)), // Circle shape
      ),
      padding: const EdgeInsets.all(8.0), // Padding for the icon
      child: Icon(
        icon,
        //color: _selectedIndex == index ? Colors.white : Colors.black, // White color when selected, black otherwise
      ),
    );
  }
}




//popup menu of chat
class NewGroup extends StatelessWidget {
  const NewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Group')),
      body: const Center(child: Text('New Group Page')),
    );
  }
}

class NewBroadcast extends StatelessWidget {
  const NewBroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Broadcast')),
      body: const Center(child: Text('New Broadcast Page')),
    );
  }
}

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Linked Devices')),
      body: const Center(child: Text('Linked Devices Page')),
    );
  }
}

class StarredMessages extends StatelessWidget {
  const StarredMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Starred Messages')),
      body: const Center(child: Text('Starred Messages Page')),
    );
  }
}

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payments')),
      body: const Center(child: Text('Payments Page')),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Page')),
    );
  }
}

