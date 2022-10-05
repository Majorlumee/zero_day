import 'package:dealersapp/screen/dealerWalletFlow/account/account.dart';
import 'package:dealersapp/screen/dealerWalletFlow/tripHistory/tripHistory.dart';
import 'package:dealersapp/screen/dealerWalletFlow/wallet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screen/dealerWalletFlow/pickup.dart';
import '../state_manager/state_manager.dart';

class BottomBar extends StatefulWidget {
  static String id = 'bottomBar';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> widgetOptions = <Widget>[
    const PickUp(),
    const Wallet(),
    const SignUpHistory(),
    const Account()

  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<stateManager>(
      builder: (context, statemanager, child){
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Provider.of<stateManager>(context).selectedindex,
            onTap: statemanager.selectedButton,
            backgroundColor: const Color(0xFFFCFDFC),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: const Color(0xFF85B870),
            unselectedItemColor:  const Color(0xFF777B76),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/box.png'),), label: 'PickUp'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/wallet-2.png'),), label: 'Wallet'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/map.png'),), label: 'Trip History'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/profile.png'),), label: 'Account')
            ],),
          body: widgetOptions[Provider.of<stateManager>(context).selectedindex],
        );
      },
    );
  }
}
