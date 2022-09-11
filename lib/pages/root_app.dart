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
    return Scaffold(backgroundColor: Colors.black,bottomNavigationBar:getFooter(),
    body: getBody(),);
  }
  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        Center (child:Text("Home",Style:TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold))],
    );
  }
  Widget getFooter(){
    List items =[
    Feather.home,
       Feather.book,
      Feather.search,
       Feather.settings
    ];
    return Container(height: 80,decoration: BoxDecoration(color: Colors.black),
    child: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(items.length, (index){
        return IconButton(
          icon: Icon(
          items[index],
            color:activeTab==index ?Colors.black :Colors.white,),
        onPressed: (){
          setState(() {
            activeTab=index;
          });
        });
      } 
    
      
      
      )
      ),
    ),);
  }
  
  




