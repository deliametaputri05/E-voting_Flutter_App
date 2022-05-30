part of 'widgets.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomBottomNavBar({this.selectedIndex = 0, this.onTap});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  String _title;
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new PemiraPage(),
    new VotingPage(),
    new ProfilePage()
  ];

  @override
  initState() {
    super.initState();
    _title = '';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bottomNavCurrentIndex != 2
          ? AppBar(
              backgroundColor: Colors.blue,
              title: Text(_title),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //         CupertinoPageRoute(builder: (context) => SearchPage()));
                  },
                ),
              ],
            )
          : null,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 100,
                child: DrawerHeader(
                  child: Text(
                    'Menu',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: Text('Tentang'),
                onTap: () {
                  // Navigator.push(context,
                  //     CupertinoPageRoute(builder: (context) => Login()));
                },
              ),
              ListTile(
                title: Text('Kebijakan'),
                onTap: () {
                  // Navigator.push(context,
                  //     CupertinoPageRoute(builder: (context) => Kebijakan()));
                },
              ),
              ListTile(
                title: Text('Pengaturan'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Update Aplikasi'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue.shade400,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 200),
        height: 55,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
            switch (index) {
              case 0:
                {
                  _title = '';
                }
                break;
              case 1:
                {
                  _title = 'Quick Vote';
                }
            }
          });
        },
        index: _bottomNavCurrentIndex,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.bar_chart_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
