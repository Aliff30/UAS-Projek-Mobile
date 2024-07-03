import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:swalayan_online/view/category.form.dart';
// import 'package:swalayan_online/view/category.view.dart';
import 'package:swalayan_online/view/product.form.dart';
import 'package:swalayan_online/view/product.view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:swalayan_online/view/widgets/categories.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    // CategoryPage(),
    ProductPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          // Icon(
          //   Icons.category,
          //   size: 30,
          //   color: Colors.white,
          // ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        index: _selectedIndex,
        onTap: _onItemTapped,
        animationDuration: const Duration(milliseconds: 300),
        color: Colors.lightBlueAccent,
        buttonBackgroundColor: const Color.fromARGB(255, 228, 221, 221),
        height: 60,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // final List<String> imgList = [
  //   'lib/assets/buah.jpg',
  //   'lib/assets/sabun-cuci-muka.jpg',
  //   'lib/assets/sabun.jpg',
  //   'lib/assets/peralatan-bayi.jpg',
  //   'lib/assets/peralatan_rumah.jpg',
  // ];

  final List<Category> categories = [
    Category(name: 'Minuman & Jelly', imagePath: 'lib/assets/minuman.png'),
    Category(name: 'Buah & Sayuran', imagePath: 'lib/assets/buah-sayur.png'),
    Category(name: 'Bahan Dapur', imagePath: 'lib/assets/bahan-dapur.png'),
    Category(name: 'Makanan', imagePath: 'lib/assets/makanan.png'),
    Category(name: 'Perlengkapan Bayi', imagePath: 'lib/assets/baby-stuff.png'),
    Category(
        name: 'Perawatan Tubuh', imagePath: 'lib/assets/perawatan-tubuh.png'),
    Category(name: 'Mainan', imagePath: 'lib/assets/toys.png'),
    Category(
        name: 'Peralatan Rumah', imagePath: 'lib/assets/peralatan_rumah.jpg'),
  ];

  final List<Product> products = [
    Product(
        name: 'Susu Ultramilk',
        imagePath: 'lib/assets/Ultramilk.png',
        price: 'Rp.6.500'),
    Product(
        name: 'Mie Sarimi isi 2',
        imagePath: 'lib/assets/sarimi.png',
        price: 'Rp.4.000'),
    Product(
        name: 'Mie Sarimi isi 2r',
        imagePath: 'lib/assets/sarimi.png',
        price: 'Rp.13.000'),
    Product(
        name: 'Susu Ultramilk',
        imagePath: 'lib/assets/Ultramilk.png',
        price: 'Rp.13.000'),
    Product(
        name: 'Susu Ultramilk',
        imagePath: 'lib/assets/Ultramilk.png',
        price: 'Rp.13.000'),
    Product(
        name: 'Mie Sarimi isi 2',
        imagePath: 'lib/assets/sarimi.png',
        price: 'Rp.13.000'),
    Product(
        name: 'Mie Sarimi isi 2',
        imagePath: 'lib/assets/sarimi.png',
        price: 'Rp.13.000'),
    Product(
        name: 'Mie Sarimi isi 2',
        imagePath: 'lib/assets/sarimi.png',
        price: 'Rp.13.000'),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 210, 220, 237), Colors.lightBlueAccent],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search Here",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.filter_list)
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  // CarouselSlider(
                  //   options: CarouselOptions(
                  //     height: 200.0,
                  //     autoPlay: true,
                  //     enlargeCenterPage: true,
                  //     aspectRatio: 16 / 9,
                  //     autoPlayCurve: Curves.fastOutSlowIn,
                  //     enableInfiniteScroll: true,
                  //     autoPlayAnimationDuration:
                  //         const Duration(milliseconds: 800),
                  //     viewportFraction: 0.8,
                  //   ),
                  //   items: imgList
                  //       .map((item) => Center(
                  //             child: Image.asset(
                  //               item,
                  //               fit: BoxFit.cover,
                  //               width: 1000,
                  //               errorBuilder: (context, error, stackTrace) {
                  //                 return Container(
                  //                   color: Colors.grey,
                  //                   child: const Center(
                  //                     child: Text(
                  //                       'Image not available',
                  //                       style: TextStyle(color: Colors.white),
                  //                     ),
                  //                   ),
                  //                 );
                  //               },
                  //             ),
                  //           ))
                  //       .toList(),
                  // ),

                  // Product Widgets
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(color: Colors.white
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CategoriesWidget(
                          
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
