import 'package:flutter/material.dart';
import 'package:lightpay/presentation/screens/historyscreen.dart';
import 'package:lightpay/presentation/screens/homescreen.dart';
import 'package:lightpay/presentation/screens/rechargescreen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int index = 0;
  late final PageController _pageController;

  final List<Widget> _pages = const [
    HomeScreen(),
    RechargeScreen(),
    HistorScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int newIndex) {
    setState(() {
      index = newIndex;
    });
    _pageController.animateToPage(
      newIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          children: _pages,
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: NavigationBarTheme(
              data: NavigationBarThemeData(
                backgroundColor: const Color.fromARGB(255, 16, 40, 58),
                indicatorColor: Colors.blue.shade100,
                labelTextStyle: WidgetStateProperty.all(
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              child: NavigationBar(
                labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
                animationDuration: const Duration(milliseconds: 400),
                elevation: 8,
                selectedIndex: index,
                onDestinationSelected: _onItemTapped,
                destinations: const [
                  NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
                  NavigationDestination(icon: Icon(Icons.account_balance_wallet_rounded), label: 'Recharge'),
                  NavigationDestination(icon: Icon(Icons.history), label: 'History'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
