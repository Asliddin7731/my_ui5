import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/ic_header.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black87.withOpacity(0.8),
                  Colors.black87.withOpacity(0.4),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Best Hotels Ever',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 40, ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Colors.grey,
                            size: 25,
                          ),
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                          hintText: 'Search for hotels...',
                        ),
                      ),
                    ),
                    const SizedBox(height: 25,)
                  ],
                ),
              ),
            ),
             // Best hotel
             Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Business Hotels', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/ic_hotel1.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel2.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel3.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel4.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel5.jpg', title:'Hotel 1'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16,),

                  const Text('Airport Hotels', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/ic_hotel3.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel1.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel2.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel4.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel5.jpg', title:'Hotel 1'),
                      ],
                    ),

                  ),const SizedBox(height: 16,),

                  const Text('Airport Hotels', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/ic_hotel5.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel4.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel1.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel2.jpg', title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel3.jpg', title:'Hotel 1'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem( {required String image, required String title}) {
    return AspectRatio(aspectRatio:  1/1,
    child: Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image),
          fit: BoxFit.cover)
      ),
      height: 200,
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black87.withOpacity(0.7),
              Colors.black87.withOpacity(0.2)
            ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 15),),
            const Icon(CupertinoIcons.heart_fill, color: Colors.red,)
          ],
        ),
      ),
    ),
    );
  }

}
