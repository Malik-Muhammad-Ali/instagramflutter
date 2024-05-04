// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'images/profil1.jpg',
      'images/profil2.jpg',
      'images/profil3.jpg',
      'images/profil4.jpg'
    ];
    List<String> posts = [
      'images/post1.jpg',
      'images/post2.jpg',
      'images/post3.jpg',
      'images/post4.jpg'
    ];
    List<String> Users = ['Ali', 'Adeel', 'Hamza', 'Huzaifa'];
    List<String> Location = ['Multan', 'Lahore', 'Islamabad', 'D.G Khan'];

    return MaterialApp(
      home: Scaffold(
          // Appbar
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.send),
                  ],
                )
              ],
            ),
          ),
          // Body
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Stories section
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(images[index]),
                              ),
                            ),
                          ),
                          Text(
                            Users[index],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                // posts section
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(images[index]),
                          ),
                          title: Text(Users[index]),
                          subtitle: Text(Location[index]),
                          trailing: const Icon(Icons.more_vert),
                        ),
                        Container(margin: const EdgeInsets.only(top: 10)),
                        AspectRatio(
                            aspectRatio: 2.0,
                            child:
                                Image.asset(posts[index], fit: BoxFit.cover)),
                        Container(margin: const EdgeInsets.only(top: 10)),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.comment),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.send),
                              ],
                            ),
                            Icon(Icons.bookmark_border),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text.rich(
                                TextSpan(
                                  text: 'Liked by ',
                                  children: [
                                    TextSpan(
                                      text: 'Mudassir',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' and',
                                    ),
                                    TextSpan(
                                      text: ' 100 others',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Text(
                                'Kashir: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text('This is a comment'),
                            ],
                          ),
                        ),
                        // Comment Section
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/commentimage.jpg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Add a comment...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text('1 Day Ago'),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),

          // Bottom Navigation Bar
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_box),
                label: 'Upload',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Reels',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
          )),
    );
  }
}
