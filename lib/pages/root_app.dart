import 'package:clone/pages/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:feather_icons_svg/feather_icons_svg.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar:getFooter(),
    body: getBody(),);
  }
  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        Homepage(),
        Center (child:Text("Home",style:TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold))
    ),
    Center (child:Text("Library",style:TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold))
    ),
    Center (child:Text("Search",style:TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold))
    ),
    Center (child:Text("Settings",style:TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold))
    ),
    ],
    );
  }
  Widget getFooter(){
   return Scaffold(
 backgroundColor: Colors.black,
  bottomNavigationBar: BottomNavigationBar(
  
    items: const <BottomNavigationBarItem>[

      BottomNavigationBarItem(
         backgroundColor: Colors.black,
       icon: Icon(Icons.home, color: Colors.white,),
        label: 'Home',
      
      ),
      // BottomNavigationBarItem(
      //   icon: Icon(Icons.camera),
      //   label: 'Camera',
      
    BottomNavigationBarItem(
       backgroundColor: Colors.black,
            icon: Icon(Icons.book,color: Colors.white,),
            label: "Book",
   
          ),
          
      
      // BottomNavigationBarItem(
      //   icon: Icon(Icons.chat),
      //   label: 'Chats',
      BottomNavigationBarItem(
         backgroundColor: Colors.black,
            icon: Icon(Icons.search,color: Colors.white,),
            label: "Search",
      ),
      BottomNavigationBarItem(
         backgroundColor: Colors.black,
            icon: Icon(Icons.settings,color: Colors.white,),
            label: "Setttings",
      ),
    ],
    
  ),
 
);
 
 
  }
 }
      

  
  
  
  




