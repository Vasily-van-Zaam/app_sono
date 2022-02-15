import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    Key? key,
  }) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  late List<Widget> _listPages;

  @override
  initState() {
    super.initState();
    _listPages = [
      Text(''),
      Text(''),
      Text(''),
      // HomaPage(user: widget.user),
      // QrCodePage(user: widget.user),
      // ProfilePage(user: widget.user),
    ];
  }

  int _currentIndex = 0;
  List<BottomNavigationBarItem> itemList(context) => [
        BottomNavigationBarItem(
          icon: const Icon(Icons.savings, size: 28),
          // label: S.of(context).main,
          activeIcon: const Icon(Icons.savings, size: 28),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.qr_code_scanner_outlined, size: 28),
          activeIcon: const Icon(Icons.qr_code_scanner_outlined, size: 28),
          // label: S.of(context).qr_code,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.perm_identity, size: 28),
          activeIcon: const Icon(Icons.perm_identity, size: 28),
          // label: S.of(context).profile,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          // type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedFontSize: 14,
          selectedFontSize: 14,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: itemList(context),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
