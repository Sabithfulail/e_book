import 'package:book_app/book_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BookData> bookData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 50.0),
            child: Row(children: [
              Icon(Icons.menu, size: 35.0),
              Padding(
                  padding: EdgeInsets.only(left: 90.0),
                  child: Text(
                    'Home',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 75.0),
                child: Icon(
                  Icons.shopping_cart,
                  size: 35.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  size: 35.0,
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi Jennifer!',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text('Search your desire book here...')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 15, right: 30),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(children: [
                    Icon(Icons.search),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('Search for e-books')),
                  ]),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 20.0),
            child: Row(
              children: [
                Text(
                  "Top trending books",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
                SizedBox(
                  width: 70.0,
                ),
                Text(
                  'see all > ',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20),
            child: SizedBox(
              height: 120,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const BookData(
                        'Night Of The Rez', 'assets/NightOfTheRez.jpg'),
                    SizedBox.fromSize(size: const Size(10, 100)),
                    const BookData(
                        'Raising Lazarus', 'assets/RaisingLazarus.jpg'),
                    SizedBox.fromSize(size: const Size(10, 100)),
                    const BookData(
                        'The Angel Of Rome', 'assets/TheAngelOfRome.jpg'),
                    SizedBox.fromSize(size: const Size(10, 100)),
                    const BookData(
                        'Nuclear Family', 'assets/NuclearFamily.jpg'),
                    SizedBox.fromSize(size: const Size(10, 100)),
                    const BookData('The Pink Orel', 'assets/ThePinkOrel.jpg'),
                    SizedBox.fromSize(size: const Size(10, 100)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                width: double.infinity,
                height: 480,
                decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Continue Reading',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            SizedBox(
                              width: 95,
                            ),
                            Text(
                              'View all',
                              style: TextStyle(color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          width: 350,
                          height: 200,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 75,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/NuclearFamily.jpg'),
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'The Nigth of the rez',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    const Text(
                                      'By Jess Walter',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.yellow,
                                        ),
                                        Text('(4.5)')
                                      ],
                                    ),
                                    Slider(
                                      value: 40,
                                      onChanged: (v) {},
                                      thumbColor: Colors.white,
                                      activeColor: Colors.blue,
                                      min: 0,
                                      max: 100,
                                    ),
                                    Container(
                                      height: 28,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.indigo[800],
                                      ),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Continue',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ])),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20.0))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks_outlined),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Profile')
          ],
          selectedItemColor: Colors.amber[800],
        ),
      ),
    );
  }
}
