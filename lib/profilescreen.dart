import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://images.pexels.com/photos/1646953/pexels-photo-1646953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/1579708/pexels-photo-1579708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/3893650/pexels-photo-3893650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/179747/pexels-photo-179747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/7883486/pexels-photo-7883486.jpeg?auto=compress&cs=tinysrgb&w=300',
      'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=300',
      'https://images.pexels.com/photos/1646953/pexels-photo-1646953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/1579708/pexels-photo-1579708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/3893650/pexels-photo-3893650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/179747/pexels-photo-179747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/7883486/pexels-photo-7883486.jpeg?auto=compress&cs=tinysrgb&w=300',
      'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=300',
      'https://images.pexels.com/photos/1646953/pexels-photo-1646953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/1579708/pexels-photo-1579708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/163036/mario-luigi-yoschi-figures-163036.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/179747/pexels-photo-179747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/7883486/pexels-photo-7883486.jpeg?auto=compress&cs=tinysrgb&w=300',
      'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=300',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.lock,
                size: 16,
                color: Color(0xff262626),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Jacob_23",
                style: TextStyle(
                  color: Color(0xff262626),
                  fontFamily: "Poppins-Black",
                  fontSize: 18,
                ),
              )
            ],
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff262626),
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                decoration: BoxDecoration(color: Color(0xff3797EF)),
                accountName: Text('Janny_23'),
                accountEmail: Text("Janny_23@gmail.com"),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home Screen"),
                onTap: () {
                  Navigator.pushNamed(context, '/homescreen');
                },
              ),
              ListTile(
                leading: const Icon(Icons.search),
                title: const Text("Seacrh Screen"),
                onTap: () {
                  Navigator.pushNamed(context, '/searchscreen');
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text("Notification Screen"),
                onTap: () {
                  Navigator.pushNamed(context, '/notification');
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '102',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Black',
                              ),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Regular',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '500',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Black',
                              ),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Regular',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '250',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Black',
                              ),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Regular',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Janny_23",
                style: TextStyle(fontFamily: "Poppins-Black", fontSize: 14),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Everything Ok, 😊",
                style: TextStyle(fontFamily: "Poppins-Regular", fontSize: 14),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Loving with Flutter ❤",
                style: TextStyle(fontFamily: "Poppins-Regular", fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff3797EF),
                ),
                alignment: Alignment.center,
                height: 30,
                width: 400,
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Color(0XffFFFFFF),
                    fontFamily: 'Poppins-Black',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: index == 0
                              ? BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  shape: BoxShape.circle,
                                )
                              : BoxDecoration(
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                          child: index == 0
                              ? const Center(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              : const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  ),
                                  radius: 40,
                                ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: TabBar(
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                            fontSize: 18, fontFamily: 'Poppins-Black'),
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle: TextStyle(
                            fontSize: 18, fontFamily: 'Poppins-Regular'),
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(text: 'Posts'),
                          Tab(text: 'Photos'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              itemCount: images.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 8.0,
                                crossAxisSpacing: 8.0,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return Image.network(images[index]);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              itemCount: images.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 8.0,
                                crossAxisSpacing: 8.0,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return Image.network(images[index]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
