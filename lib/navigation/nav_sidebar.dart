import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:go_router/go_router.dart';

class SideBarExample extends StatefulWidget{
  const SideBarExample({super.key});

  @override
  State<StatefulWidget> createState() => _SideBarExampleState();
}

class _SideBarExampleState extends State{
  int _selectedIndex = 0;

  void _onChangeNavigation(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => context.go('/'), // Navigates up/back
          ),
          title:Text("Contoh sidebar")),
      body: Row(
          children:[
            SidebarX(
                extendedTheme: const SidebarXTheme(
                  width: 110,
                ),
                theme:SidebarXTheme(
                    selectedItemDecoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    )
                ),
                controller: SidebarXController(selectedIndex: _selectedIndex, extended:true),
                items: [
                  SidebarXItem(icon: Icons.home, label: 'Home', onTap: () =>_onChangeNavigation(0)),
                  SidebarXItem(icon: Icons.search, label: 'Search', onTap: () =>_onChangeNavigation(1)),
                  SidebarXItem(icon: Icons.flight_class_sharp, label: 'Flight', onTap: () =>_onChangeNavigation(2)),
                ]
            ),
          ]
      ),

    );
  }
}