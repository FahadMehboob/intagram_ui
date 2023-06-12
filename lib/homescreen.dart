import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              FontAwesomeIcons.heart,
              size: 25,
              color: Color(0xff262626),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                FontAwesomeIcons.facebookMessenger,
                size: 25,
                color: Color(0xff262626),
              ),
            ),
          ],
          leading: const Icon(
            Icons.camera_alt_outlined,
            size: 35,
            color: Color(0xff262626),
          ),
          backgroundColor: const Color(0xffFAFAFA),
          centerTitle: true,
          title: const Image(
            image: AssetImage('assets/logo.png'),
            height: 200,
            width: 200,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: index == 0
                                  ? BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                      shape: BoxShape.circle,
                                    )
                                  : BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 3,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                              child: CircleAvatar(
                                backgroundImage: index == 0
                                    ? const NetworkImage(
                                        'https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg',
                                      )
                                    : const NetworkImage(
                                        'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=300',
                                      ),
                                radius: 40,
                                child: index == 0
                                    ? Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.blue,
                                            size: 20,
                                          ),
                                        ),
                                      )
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Divider(),
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    radius: 30,
                  ),
                  title: Text(
                    'Smith_steve',
                    style: TextStyle(
                        fontFamily: 'Poppins-Black',
                        fontSize: 14,
                        color: Color(0xff262626)),
                  ),
                  subtitle: Text(
                    'Melbourne, Australia',
                    style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 12,
                        color: Color(0xff262626)),
                  ),
                  trailing: Icon(Icons.drag_handle),
                ),
                Container(
                  height: 250,
                  width: 250,
                  child: Image.network(
                    'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
