// import 'package:backdrop/app_bar.dart';
// import 'package:backdrop/button.dart';
// import 'package:backdrop/scaffold.dart';
// import 'package:volt_arena/feeds.dart';
// import 'package:volt_arena/provider/products.dart';
// import 'package:volt_arena/widget/backlayer.dart';
// import 'package:volt_arena/widget/popular_products.dart';
// import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:provider/provider.dart';

// import 'consts/colors.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List _carouselImages = [
//     'assets/images/carousel1.png',
//     'assets/images/carousel2.jpeg',
//     'assets/images/carousel3.jpg',
//     'assets/images/carousel4.png',
//   ];

//   List _brandImages = [
//     'assets/images/addidas.jpg',
//     'assets/images/apple.jpg',
//     'assets/images/dell.jpg',
//     'assets/images/h&m.jpg',
//     'assets/images/nike.jpg',
//     'assets/images/samsung.jpg',
//     'assets/images/huawei.jpg',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     final productsData = Provider.of<Products>(context);
//     productsData.fetchProducts();

//     final popularItems = productsData.popularProducts;
//     print('popularItems length ${popularItems.length}');
//     return Scaffold(
//       body: BackdropScaffold(
//         frontLayerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         headerHeight: MediaQuery.of(context).size.height * 0.25,
//         appBar: BackdropAppBar(
//           title: Text("Home"),
//           leading: BackdropToggleButton(icon: AnimatedIcons.home_menu),
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: [
//               ColorsConsts.starterColor,
//               ColorsConsts.endColor
//             ])),
//           ),
//           actions: <Widget>[
//             IconButton(
//               iconSize: 15,
//               padding: const EdgeInsets.all(10),
//               icon: CircleAvatar(
//                 radius: 15,
//                 backgroundColor: Colors.white,
//                 child: CircleAvatar(
//                   radius: 13,
//                   backgroundImage: NetworkImage(
//                       'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg'),
//                 ),
//               ),
//               onPressed: () {},
//             )
//           ],
//         ),
//         backLayer: BackLayerMenu(),
//         frontLayer: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 190.0,
//                 width: double.infinity,
//                 child: Carousel(
//                   boxFit: BoxFit.fill,
//                   autoplay: true,
//                   animationCurve: Curves.fastOutSlowIn,
//                   animationDuration: Duration(milliseconds: 1000),
//                   dotSize: 5.0,
//                   dotIncreasedColor: Colors.purple,
//                   dotBgColor: Colors.black.withOpacity(0.2),
//                   dotPosition: DotPosition.bottomCenter,
//                   showIndicator: true,
//                   indicatorBgPadding: 5.0,
//                   images: [
//                     ExactAssetImage(_carouselImages[0]),
//                     ExactAssetImage(_carouselImages[1]),
//                     ExactAssetImage(_carouselImages[2]),
//                     ExactAssetImage(_carouselImages[3]),
//                   ],
//                 ),
//               ),
//             Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Text(
//                       'Popular Products',
//                       style:
//                           TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
//                     ),
//                     Spacer(),
//                     FlatButton(
//                       onPressed: () {
//                         Navigator.of(context)
//                             .pushNamed(Feeds.routeName, arguments: 'popular');
//                       },
//                       child: Text(
//                         'View all...',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w800,
//                             fontSize: 15,
//                             color: Colors.red),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 285,
//                 margin: EdgeInsets.symmetric(horizontal: 3),
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: popularItems.length,
//                     itemBuilder: (BuildContext ctx, int index) {
//                       return ChangeNotifierProvider.value(
//                         value: popularItems[index],
//                         child: PopularProducts(
//                             // imageUrl: popularItems[index].imageUrl,
//                             // title: popularItems[index].title,
//                             // description: popularItems[index].description,
//                             // price: popularItems[index].price,
//                             ),
//                       );
//                     }),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
