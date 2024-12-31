import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/image_strings.dart';

class ProfileSidebar extends StatelessWidget {
  const ProfileSidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Drawer Header
            DrawerHeader(
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //circular avatar for profile picture
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(profileImg),
                    ),
                    const SizedBox(height: 10.0,) ,// spacing between avatar and username
                    //username
                    Text(
                      'Rachel Green',
                      style:Theme.of(context).textTheme.headlineMedium, ),
                  ]
              ),
            ),
            //Drawer Items
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Personal Details'),
              onTap: (){
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.garage_rounded),
              title: Text('My Garage'),
              onTap: (){
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.upload_file_outlined),
              title: Text('Upload Documents'),
              onTap: (){
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded,),
              title: Text('My Orders'),
              onTap: (){
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                Navigator.pop(context); // close the drawer
              },
            ),

          ],
        ),
      ),
    );
  }
}