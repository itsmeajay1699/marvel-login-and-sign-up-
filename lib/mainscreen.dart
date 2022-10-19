import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
class MainScreen extends StatefulWidget {
  static const id = 'MainScreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<String> name = ['Movies', 'TV Shows', 'Anime', 'What If'];
List<String> imageurl = [
  'https://i.pinimg.com/originals/36/86/8d/36868d10eef694731aaa8d6c5d6b471a.jpg',
  'https://www.cinemablind.com/wp-content/uploads/2021/11/Spider-Man-No-Way-Home-Poster-543x805.jpg',
  'https://th.bing.com/th/id/OIP.XQ6OKzOjobXtgBITWl-uSwHaLH?pid=ImgDet&rs=1',
  'https://i.redd.it/1sdabp4nt2m21.jpg',
];
int index1 = 0;
int index2 = 1;
class _MainScreenState extends State<MainScreen> {
  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mainscreen.jpg'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 16, right: 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.TF2MwccEWUuBSkCnn6YiQAHaJY?pid=ImgDet&rs=1'),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textBaseline: TextBaseline.ideographic,
                    children: const [Text('Hello'), Text('Ajay Kumar')],
                  ),
                  SizedBox(
                    width: widthscreen - 262,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      const Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(Icons.add),
                      )
                    ],
                  ),
                  const SizedBox(width: 4,),
                  GestureDetector(
                    onTap: (){
                      _auth.signOut();
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.logout
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: name.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        index1 = index;
                      });
                    },
                    child: Card(
                      color: index1 == index ? Colors.white : Colors.grey,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        margin: EdgeInsets.only(
                            right: widthscreen / 8, left: widthscreen / 20),
                        child: Text(
                          name[index],
                          style: TextStyle(
                              color:
                                  index1 == index ? Colors.red : Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageurl.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            imageurl[index],
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 63,
              child: Column(
                children: [
                  const Text('Episode 1'),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Pow Pow',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12,
                        width: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 4),
                              height: 4,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: index2 == index
                                      ? Colors.white
                                      : Colors.grey),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recently Watched',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Sea all')
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: secondimageurl.length,
                  itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: NetworkImage(secondimageurl[index]))
                  ),
                );
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}
