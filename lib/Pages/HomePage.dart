import 'package:flutter/material.dart';
import 'package:gamestation/Components/ButtonNavBar.dart';
import 'package:gamestation/Pages/CartPage.dart';
import 'package:gamestation/Pages/Credtis.dart';
import 'package:gamestation/Pages/IntroPage.dart';
import 'package:gamestation/Pages/ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          ButtonNavBar(onTabChange: (index) => _navigateBottomBar(index)),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/Imagens/LogoApp.png',
                  height: 100,
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile(
                    leading: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    }, icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    )),
                    title: Text("Home"),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ListTile(
                    leading: IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Credits()));
                      },
                      icon: Icon(
                        Icons.question_mark,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Credits",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 30.0),
              child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, elevation: 0),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IntroPage())),
                    child: Text(
                      "Logout",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            )
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.white24,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Game Station",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          )),
      body: _pages[_selectedIndex],
    );
  }
}
