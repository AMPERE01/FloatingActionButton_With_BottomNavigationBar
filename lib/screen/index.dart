import 'package:flutter/material.dart';
import 'package:navbar/screen/coin/coin.dart';
import 'package:navbar/screen/dashboard/dashboard.dart';
import 'package:navbar/screen/profile/profile.dart';
import 'package:navbar/screen/setting/sitting.dart';
//import 'package:qrscan/qrscan.dart' as scanner;

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int currentTap = 0;
  // String? scanresult;

  final List<Widget> screens = [
    DashboardScreen(),
    CoinScreen(),
    ProfileScreen(),
    SittingScreen()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashboardScreen();

  /*startScan()async{
    String? cameraScanResult = await scanner.scan();
    setState(() {
      scanresult = cameraScanResult! ;
    }); 
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        //create button
        child: Icon(Icons.qr_code_scanner),
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //button on cennter
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8, //ขนาดรูแหว่ง
        child: Container(
          height: 60, // ความสูง Navber
          // staer right navbar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = DashboardScreen();
                        currentTap = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTap == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                              color:
                                  currentTap == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = CoinScreen();
                        currentTap = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: currentTap == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(
                              color:
                                  currentTap == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ), //END left Navbar
                ],
              ),
              //start right Navber
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfileScreen();
                        currentTap = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTap == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTap == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = SittingScreen();
                        currentTap = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTap == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'setting',
                          style: TextStyle(
                              color:
                                  currentTap == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ), //END right Navbar
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
