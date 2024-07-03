// import 'package:flutter/material.dart';
// // import 'package:carousel_slider/carousel_slider.dart';
// import 'package:swalayan_online/view/category.form.dart';
// import 'package:swalayan_online/view/product.form.dart';

// class HomeScreen extends StatelessWidget {
//   // final List<String> imgList = [
//   //   'lib/assets/buah.jpg',
//   //   'lib/assets/sabun-cuci-muka.jpg',
//   //   'lib/assets/sabun.jpg',
//   //   'lib/assets/peralatan-bayi.jpg',
//   //   'lib/assets/peralatan_rumah.jpg',
//   // ];

//   final List<Category> categories = [
//     Category(name: 'Minuman & Jelly', imagePath: 'lib/assets/minuman.png'),
//     Category(name: 'Buah & Sayuran', imagePath: 'lib/assets/buah-sayur.png'),
//     Category(name: 'Bahan Dapur', imagePath: 'lib/assets/bahan-dapur.png'),
//     Category(name: 'Makanan', imagePath: 'lib/assets/makanan.png'),
//     Category(name: 'Perlengkapan Bayi', imagePath: 'lib/assets/baby-stuff.png'),
//     Category(
//         name: 'Perawatan Tubuh', imagePath: 'lib/assets/perawatan-tubuh.png'),
//     Category(name: 'Mainan', imagePath: 'lib/assets/toys.png'),
//     Category(
//         name: 'Peralatan Rumah', imagePath: 'lib/assets/peralatan_rumah.jpg'),
//   ];

//   final List<Product> products = [
//     Product(
//         name: 'Susu Ultramilk',
//         imagePath: 'lib/assets/Ultramilk.png',
//         price: 'Rp.6.500'),
//     Product(
//         name: 'Mie Sarimi isi 2',
//         imagePath: 'lib/assets/sarimi.png',
//         price: 'Rp.4.000'),
//     Product(
//         name: 'Mie Sarimi isi 2r',
//         imagePath: 'lib/assets/sarimi.png',
//         price: 'Rp.13.000'),
//     Product(
//         name: 'Susu Ultramilk',
//         imagePath: 'lib/assets/Ultramilk.png',
//         price: 'Rp.13.000'),
//     Product(
//         name: 'Susu Ultramilk',
//         imagePath: 'lib/assets/Ultramilk.png',
//         price: 'Rp.13.000'),
//     Product(
//         name: 'Mie Sarimi isi 2',
//         imagePath: 'lib/assets/sarimi.png',
//         price: 'Rp.13.000'),
//     Product(
//         name: 'Mie Sarimi isi 2',
//         imagePath: 'lib/assets/sarimi.png',
//         price: 'Rp.13.000'),
//     Product(
//         name: 'Mie Sarimi isi 2',
//         imagePath: 'lib/assets/sarimi.png',
//         price: 'Rp.13.000'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color.fromARGB(255, 210, 220, 237),
//             Colors.lightBlueAccent,
//           ],
//         ),
//       ),
//       child: SafeArea(
//         child: Column(
//           children: <Widget>[
//             const SizedBox(height: 20),
//             Container(
//               margin: EdgeInsets.all(15),
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               height: 50,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(20)),
//               child: Row(
//                 children: [
//                   Icon(Icons.search),
//                   Container(
//                     margin: EdgeInsets.only(left: 10),
//                     width: 250,
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         hintText: "Search Here",
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Icon(Icons.filter_list)
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//             Expanded(
//               child: ListView(
//                 children: [
//                   // CarouselSlider(
//                   //   options: CarouselOptions(
//                   //     height: 200.0,
//                   //     autoPlay: true,
//                   //     enlargeCenterPage: true,
//                   //     aspectRatio: 16 / 9,
//                   //     autoPlayCurve: Curves.fastOutSlowIn,
//                   //     enableInfiniteScroll: true,
//                   //     autoPlayAnimationDuration:
//                   //         const Duration(milliseconds: 800),
//                   //     viewportFraction: 0.8,
//                   //   ),
//                   //   items: imgList
//                   //       .map((item) => Center(
//                   //             child: Image.asset(
//                   //               item,
//                   //               fit: BoxFit.cover,
//                   //               width: 1000,
//                   //               errorBuilder: (context, error, stackTrace) {
//                   //                 return Container(
//                   //                   color: Colors.grey,
//                   //                   child: const Center(
//                   //                     child: Text(
//                   //                       'Image not available',
//                   //                       style: TextStyle(color: Colors.white),
//                   //                     ),
//                   //                   ),
//                   //                 );
//                   //               },
//                   //             ),
//                   //           ))
//                   //       .toList(),
//                   // ),
//                   const SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Kategori',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16),
//                             color: Colors.white,
//                           ),
//                           height: 120,
//                           padding: const EdgeInsets.all(8),
//                           child: Center(
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: categories.length,
//                               itemBuilder: (context, index) {
//                                 return CategoryItem(
//                                     category: categories[index]);
//                               },
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           'Produk Lainnya',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16),
//                             color: Colors.white,
//                           ),
//                           height: 200,
//                           padding: const EdgeInsets.all(8),
//                           child: Center(
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: products.length,
//                               itemBuilder: (context, index) {
//                                 return ProductItem(product: products[index]);
//                               },
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
