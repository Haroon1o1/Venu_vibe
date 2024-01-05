
import 'package:flutter/material.dart';
import 'package:random/widgets/button.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Wah Cantt , Pakistan'),
        
        actions: [Icon(Icons.settings), Icon(Icons.notifications)],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ali Hamza'),
              accountEmail: Text('ali.hamza@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image URL
              ),
              otherAccountsPictures: [
                Icon(Icons.close),
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Profile'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
              trailing: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.red,
                child: Text('3', style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Calender'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Bookmark'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Contact Us'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Helps & FAQs'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sign Out'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle the action
                },
                child: Text('Upgrade Pro'),
              ),
            ),
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search...',
                  ),
                ),
              ),
            ),
            // Category Buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(title: 'Sports'),
                  CategoryButton(title: 'Music'),
                  CategoryButton(title: 'Food'),
                ],
              ),
            ),
            // Event Cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EventCard(image: 'assets/images/music1.jpg'),
                    SizedBox(width: 20),
                    EventCard(image: 'assets/images/music2.jpg'),  // ... Add more widgets as needed
                          ],
                        ),
              ),
            ),

            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EventCard(image: 'assets/images/music1.jpg'),
                    SizedBox(width: 20),
                    EventCard(image: 'assets/images/music2.jpg'),  // ... Add more widgets as needed
                          ],
                        ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:22),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Invite your friends',style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.w500),),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('INVITE'),
                      ),
                    ],
                  ),
                              ),
            ),
            ],

            ),),
      );}}

      