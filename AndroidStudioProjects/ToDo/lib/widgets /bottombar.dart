import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Screen/Front_page.dart';
import 'package:todo/Screen/Add_Note.dart';
import 'package:todo/Screen/RecordPage.dart';
import 'package:todo/state_manager/state_manager.dart';


class bottombar extends StatefulWidget {
  static String id = 'bottombar';
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  static final List<Widget> _widgetoptions = <Widget>[
    FrontPage(),
     AddNote(),
    const RecordPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<StateManager>(
      builder: (context, stateManager, child){
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: stateManager.selectedbutton,
            currentIndex: stateManager.selectedindex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor:const Color(0xFF282361) ,
            unselectedItemColor: const Color(0xFF62528C),
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded, size: 30,), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded, size: 30,), label:'ADD'),
              BottomNavigationBarItem(icon: Icon(Icons.pie_chart_rounded, size: 30,), label: 'Record')
            ],),
          body: _widgetoptions[stateManager.selectedindex],
        );
      },
    );
  }
}
