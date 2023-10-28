import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './menu/akun.dart';
import './menu/beranda.dart';
import './menu/pekerjaan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //State class
  int _page = 0;
  final _items = <Widget>[
    Icon(Icons.home_filled, size: 30),
    Icon(Icons.maps_home_work_outlined, size: 30),
    Icon(Icons.person, size: 30),
  ];
  final _screens = [
    Beranda(),
    Pekerjaan(),
    Akun(),
  ];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: _items,
          backgroundColor: Colors.transparent,
          height: 60,
          color: Colors.red,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
      ),
      body: _screens[_page],
    );
  }
}
