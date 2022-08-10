import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:slide_countdown/slide_countdown.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: AdvancedDrawer(
        backdropColor: const Color.fromARGB(255, 240, 240, 240),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: true,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          color: Colors.blue,
          // NOTICE: Uncomment if you want to add shadow behind the page.
          // Keep in mind that it may cause animation jerks.
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 0.0,
          //   ),
          // ],
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: ListTileTheme(
              textColor: const Color.fromARGB(255, 0, 0, 0),
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 128.0,
                    height: 128.0,
                    margin: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 64.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(248, 177, 0, 0),
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                        'https://reqres.in/img/faces/10-image.jpg'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'صفحه اصلی',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'vazir',
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.account_circle_rounded),
                    title: const Text(
                      'پروفایل',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'vazir',
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    title: const Text(
                      'علاقه مندی ها',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'vazir',
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.settings),
                    title: const Text(
                      'تنظیمات',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'vazir',
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: const Text(
                        'طراحی شده توسط | Taha.codes',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'vazir',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/header.jpg',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.question_mark,
                        color: Colors.grey[700],
                      ),
                    ),
                    Image.asset(
                      'assets/banner.png',
                      height: height * 8 / 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.grey[700],
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "ورود",
                          style: TextStyle(
                              color: Color.fromARGB(255, 48, 48, 48),
                              fontFamily: 'vazir'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.exit_to_app,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: height * 8 / 100,
                        width: width * 70 / 100,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              style: TextStyle(fontFamily: 'vazir'),
                              decoration: InputDecoration(
                                  hintText: 'جستجو',
                                  hintStyle: TextStyle(
                                      fontFamily: 'vazir', fontSize: 18),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search),
                                  iconColor: Colors.grey,
                                  suffixIconColor: Colors.grey,
                                  prefixIconColor: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      initialPage: 2,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 1)),
                  items: [
                    'assets/picOne.jpg',
                    'assets/picTwo.jpg',
                    'assets/picThree.jpg',
                    'assets/picFour.jpg',
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                top: 20.0,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  i,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ));
                      },
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 28.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SlideCountdownSeparated(
                        textStyle:
                            TextStyle(fontFamily: 'vazir', color: Colors.white),
                        duration: Duration(days: 10),
                      ),
                      Row(
                        children: const [
                          Text(
                            ':شگفت انگیز',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.redAccent,
                              fontFamily: 'vazir',
                            ),
                          ),
                          Text(
                            ' تخفیف های ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'vazir',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 2 / 100,
                ),
                Container(
                  height: height * 26 / 100,
                  color: const Color.fromARGB(255, 255, 84, 72),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width * 30 / 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                        'https://dkstatics-public.digikala.com/digikala-products/120678200.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80'),
                                    const Text(
                                      '12,000,000',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color.fromARGB(255, 82, 82, 82),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      '10,999,999',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width * 30 / 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                        'https://dkstatics-public.digikala.com/digikala-products/b33abf618eb4a4afa7cece1477631015ec27f628_1654514114.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80'),
                                    const Text(
                                      '284,000',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color.fromARGB(255, 82, 82, 82),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      '195,000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width * 30 / 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                        'https://dkstatics-public.digikala.com/digikala-products/a196c9812c77ad370d9c2ca8147962e1549f3c97_1627987489.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80'),
                                    const Text(
                                      '284,000',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color.fromARGB(255, 82, 82, 82),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      '195,000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width * 30 / 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                        'https://dkstatics-public.digikala.com/digikala-products/40c8e3f89876026de3eac5276498ec42652d3048_1656426040.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80'),
                                    const Text(
                                      '284,000',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color.fromARGB(255, 82, 82, 82),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      '195,000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width * 30 / 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                        'https://dkstatics-public.digikala.com/digikala-products/fce8738185db9d39014937fdbf9589809ff6d160_1604699884.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80'),
                                    const Text(
                                      '284,000',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color.fromARGB(255, 82, 82, 82),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      '195,000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
