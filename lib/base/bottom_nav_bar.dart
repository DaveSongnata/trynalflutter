import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trynal/base/res/styles/app_styles.dart';
import 'package:trynal/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget{
const BottomNavBar ({Key? key}): super (key: key);
@override
State<BottomNavBar> createState() => _BottomNavBarState();

}

class _BottomNavBarState extends State <BottomNavBar>{
final appScreens = [

  const HomeScreen(),
  const Text("Search"),
  const Text("Tickets"),
  const Text("Profile"),
];

int _selectedIndex = 0;
void _onItemTappped (int index){
setState((){
_selectedIndex = index;
});
}

//navigation.push

@override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: appScreens[_selectedIndex]),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTappped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
        BottomNavigationBarItem(
        icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
        activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: "Home")        ,
      
        BottomNavigationBarItem(
        icon: Icon(FluentSystemIcons.ic_fluent_search_regular), 
        activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search"),
      
        BottomNavigationBarItem(
        icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), 
        activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled), label: "Tickets"),
       
        BottomNavigationBarItem(
        icon: Icon(FluentSystemIcons.ic_fluent_person_regular), 
        activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: "Person"),


       ]),
       

      );

  } 

  }