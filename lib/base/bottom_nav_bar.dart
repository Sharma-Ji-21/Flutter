import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreen= [
    // Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.red,
    //     title: const Center(child: Text("Home")),
    //   ),
    //   body : const Center(child: Text("Home")),
    // ),
    const HomeScreen(),
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text("Search")),
      ),
      body: const Center(child: Text("Search")),
    ),
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Tickets")),
      ),
      body: const Center(child: Text("Tickets")),
    ),
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        title: const Center(child: Text("Profile")),
      ),
      body: const Center(child: Text("Profile")),
    ),
    // const Center(child: Text("Search")),
    // const Center(child: Text("Tickets")),
    // const Center(child: Text("Profile")),
  ];

  int _selectedindex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedindex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: appScreen[_selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF607D8B),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile"),
          ],
        ));
  }
}
