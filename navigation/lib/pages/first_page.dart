import 'package:flutter/material.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/profile_page.dart';
import 'package:navigation/pages/second_page.dart';
import 'package:navigation/pages/settings_page.dart';

class FirstPage extends StatefulWidget{

  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//this keeps track of the current page to display
 int _selectedIndex = 0;

 //this method updates the new seleced page
 void _navigateBottomBar(int index){
  setState(() {
    _selectedIndex = index;
  });
 }

  
  final List _pages=[

    
  
    HomePage(),
    ProfilePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("1st Page"),),
      body: _pages[_selectedIndex],

      //part 3 : Usage of Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
        //home
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',),
        //profile 

         BottomNavigationBarItem(icon: Icon(Icons.person),
        label: 'Profile',),

        //settings

         BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: 'Settings',)

      ]),

      //Part 2 : Drawer (Sidebar)
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[100],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite_outline,
      //           size: 48,
      //         ),
      //       ),
      //       //Home Page List Tile 
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("HOME"),
      //         onTap: (){
      //               //pop 

      //               Navigator.pop(context);
      //               // go to home page
      //               Navigator.pushNamed(context,'/homepage' );
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("SETTINGS"),
      //         onTap: (){
      //           Navigator.pushNamed(context,'/settingspage');
      //         },
      //       )


      //       //Setting Page List Tile

      //     ],
      //   ),
      // ),



      //Part 1 Intro

      // body: ElevatedButton(
      //   onPressed: (){
      //     //navigate to second page
      //     //Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage(),),);
      //     Navigator.pushNamed(context, '/secondpage');
      //   },
      //   child: Text("Go to Second Page")),
    );
  }
}