import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  List names = ["Mitch", "Sharon", "Vince"];

  //functions & methods
  void userTapped(){
    print("User tapped");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("My App Bar"),
        //   backgroundColor: Colors.white,
        //   elevation: 0,//no shadows
        //   leading: Icon(Icons.menu), // create icon at the left
        //   actions: [
        //     IconButton(onPressed: () {}, icon: Icon(Icons.logout))
        //   ],
        // ),]

        //Part 8: GestureDetector 
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
              child: Center(child: Text("Tap me!")),
            ),
          ),
        )


        // //Part 7 : Stack --. by default starts from the end and is ac
        // body: Stack(
        //   alignment: Alignment(x, y),
        //   children: [  // stack widgets on top of each other
        //     //big box
         
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.deepPurple,
        //     ),
        //     // medium box
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepPurple[400],
        //     ),

        //     //small box

        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.deepPurple[200],
        //     )
        //   ],
        // ),
        //Part 6 : Grid Views
        // body: GridView.builder(
        //   itemCount: 64,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),  //How many you want in each row
        //   itemBuilder: (context, index) => Container(color:Colors.deepPurple,
        //   margin: EdgeInsets.all(2),),
          
        //   ),
       
        //Part 5 : ListView builder -> to build the stuff manually
        // body: ListView.builder(  // Same like Column but they are scrollable

        
        //    // to contoll the scrollling
        //    itemCount: names.length,
        //   itemBuilder: (context,index) => ListTile(
        //     title: Text(names[index]) ,
        //   ),
        // )

        // //Part 4 : About Rows
        // body: Row(
        //   children: [
        //      Container(
        //       width: 350,
        //       color: Colors.deepPurple,
        //     ),
        //      Container(
        //       width: 350,
        //       color: Colors.deepPurple[400],
        //     ),
        //      Container(
        //       width: 350,
        //       color: Colors.deepPurple[200],
        //     ),
        //   ],
        // )


        //Part 3: About ListView

        // body: ListView(  // Same like Column but they are scrollable
        //   scrollDirection: Axis.horizontal , // to contoll the scrollling
        //   children: [
        //     Container(
        //       height: 350,
        //       color: Colors.deepPurple,
        //     ),
        //      Container(
        //       height: 350,
        //       color: Colors.deepPurple[400],
        //     ),
        //      Container(
        //       height: 350,
        //       color: Colors.deepPurple[200],
        //     ),
        //   ],
        // )

        // // Part 2 : About Container and Expanded
        // body: Column(
        //   //mainAxisAlignment: MainAxisAlignment.center, for vertical height
        //   //crossAxisAlignment: CrossAxisAlignment.start,  // to the left
        //     children: [

        //       // //1st box
        //       // Container(
        //       //   height: 200,
        //       //   width: 200,
        //       //   color: Colors.deepPurple,
        //       // ),

        //       Expanded(  // Expanded just expand to fill up the space
        //         // if no have height then will disapper can wrapped with Expanded
        //         child: Container(
                
        //           color: Colors.deepPurple,
        //         ),
        //       ),


        //       // //2nd Box
        //       // Container(
        //       //   height: 200,
        //       //   width: 200,
        //       //   color: Colors.deepPurple[400],
        //       // ),

        //       Expanded(  // Expanded just expand to fill up the space
        //         // if no have height then will disapper can wrapped with Expanded
        //         flex:2, // will be twice as big as the others
        //         child: Container(
     
        //           color: Colors.deepPurple[400],
        //         ),
        //       ),


        //       //3rd Box
        //       Expanded(  // Expanded just expand to fill up the space
        //         // if no have height then will disapper can wrapped with Expanded
        //         child: Container(
      
        //           color: Colors.deepPurple[100],
        //         ),
        //       )
        //     ],

        // ),



    //Part 1 : About the basics widgets
        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
            
        //     // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        //     // padding: EdgeInsets.only(left: 25, top: 25),
        //     padding: EdgeInsets.all(25),
        //     decoration: BoxDecoration(color: Colors.deepPurple,
        //     //curve the corners
        //     borderRadius: BorderRadius.circular(20)),
        //     child: Icon(
        //       Icons.favorite,
        //       color: Colors.white,
        //       size:64
        //     ),
        //     // child: Text("Mitch Koko",
        //     // style: TextStyle(
        //     //   color: Colors.white,
        //     //   fontSize: 28,
        //     //   fontWeight: FontWeight.bold
        //     // ),),
        //   ),
        // )
      )

    );
  }
}
