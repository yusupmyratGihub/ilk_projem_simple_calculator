import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:taze/pages/bolme_page.dart';
import 'package:taze/pages/carpi_page.dart';
import 'package:taze/pages/cikarma_page.dart';
import 'package:taze/pages/toplama_page.dart';

class AchilisSayfa extends StatefulWidget {
  @override
  _AchilisSayfaState createState() => _AchilisSayfaState();
}

class _AchilisSayfaState extends State<AchilisSayfa> {
  //Başlangıçtaki indis değeri
  int _activePage = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  //Sekmedeki sayfalar
  final List<Widget> _tabItems = [
    CharpiSayfasi(),
    ToplamaSayfasi(),
    ChikarmaSayfasi(),
    BolmeSayfasi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: _buildCurvedNavigationBar(),
      body: Container(
        child: _tabItems[
            _activePage], //Listenin '_activePage' inci indisindeki sayfa
      ),
    );
  }

  CurvedNavigationBar _buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: _activePage,
      backgroundColor: Colors.black12,
      color: Colors.red,
      items: <Widget>[
        Icon(
          Icons.clear,
          size: 32,
          color: Colors.black,
        ),
        Icon(
          Icons.add,
          size: 32,
          color: Colors.grey,
        ),
        Icon(
          Icons.remove,
          size: 32,
          color: Colors.yellow,
        ),
        Icon(
          Icons.open_in_full,
          size: 32,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        setState(() {
          _activePage = index;
        });
      },
    );
  }
}
