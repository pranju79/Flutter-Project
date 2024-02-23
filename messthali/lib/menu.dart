import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Mess Thali',
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(
          Icons.food_bank_rounded,
          color: Colors.white,
          size: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Stack(
                children: [
                  const SizedBox(
                    height: 450,
                    width: double.infinity,
                  ),
                  Positioned.fill(
                    child: Image.asset(
                      'assets/banner2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 390,
                    right: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, right: 80),
                              child: GestureDetector(
                                onTap: () {
                                  _launchMap();
                                },
                                child: const Text.rich(
                                  TextSpan(
                                    text: 'Pimple Gurav, Pune - ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 90, 61, 50),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Get directions',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 80, top: 12),
                              child: Row(
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Icon(
                                        Icons.star,
                                        color: Colors.yellow[800],
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '(343 reviews)',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 90, 61, 50),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 140,
                              height: 35,
                              child: TextButton.icon(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return Colors.white;
                                      }
                                      return Colors.white;
                                    },
                                  ),
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return const Color.fromARGB(
                                                255, 90, 61, 50)
                                            .withOpacity(0.2);
                                      }
                                      return Colors.transparent;
                                    },
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                icon: const Icon(Icons.photo,
                                    color: Color.fromARGB(255, 90, 61, 50)),
                                label: const Text(
                                  'View Photos',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 90, 61, 50),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 140,
                              height: 35,
                              child: TextButton.icon(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return Colors.white;
                                      }
                                      return Colors.white;
                                    },
                                  ),
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return const Color.fromARGB(
                                                255, 90, 61, 50)
                                            .withOpacity(0.2);
                                      }
                                      return Colors.transparent;
                                    },
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                icon: const Icon(Icons.favorite,
                                    color: Color.fromARGB(255, 90, 61, 50)),
                                label: const Text(
                                  'Wishlist',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 90, 61, 50),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
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
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 50, top: 40),
                child: Text(
                  'INFORMATION',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.purple,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Messthali, a venture under Telphatech LLP, strives to streamline the process of finding mess providers. Our mission is to connect individuals with nearby mess services, leveraging technology to simplify the search process. We envision a world where accessing the right mess is effortless, aiming to be the go-to platform for all mess-related needs. Our offerings include a comprehensive database of local mess providers, ensuring users can easily locate the services they require. With a user-friendly website design, users can effortlessly search for providers, read reviews, and make informed decisions. \n\nWe prioritize community-driven reviews, empowering users to share experiences and guide others. Additionally, our dedicated support team, supported by Telphatech LLP, stands ready to address any inquiries or concerns. Messthali is committed to enhancing the mess-searching experience, making it convenient and efficient for individuals everywhere.',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 35),
              child: Row(
                children: [
                  Text(
                    'CATEGORY',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.purple,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: SizedBox(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      List<String> imageAssets = [
                        'assets/bhaji.png',
                        'assets/vegthali.png',
                        'assets/rice.png',
                        'assets/chicken.png',
                        'assets/nasta.png',
                      ];
                      List<String> itemTexts = [
                        'BHAJI',
                        'VEG',
                        'RICE',
                        'CHICKEN',
                        'NASTA',
                      ];
                      index %= min(imageAssets.length, itemTexts.length);
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          padding: const EdgeInsets.all(32),
                          width: 180,
                          height: 180,
                          child: Column(
                            children: [
                              Image.asset(
                                imageAssets[index],
                                width: 110,
                                height: 110,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                itemTexts[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 15),
              child: Text(
                'MENU',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.purple,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: [
                  Text(
                    'NASTA',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> imageAssets = [
                    'assets/pavbhaji.jpeg',
                    'assets/misalpav.jpg',
                    'assets/masaladosa.jpg',
                    'assets/cholebhature.jpg'
                  ];
                  List<String> itemTexts = [
                    'Pav Bhaji',
                    'Misal Pav',
                    'Masala Dosa',
                    'Chole Bhature',
                  ];
                  List<String> itemPrices = [
                    'Rs.60',
                    'Rs.90',
                    'Rs.45',
                    'Rs.55',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imageAssets[index],
                            width: 300,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 25),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    itemTexts[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add_box),
                                  color: Colors.purple,
                                  iconSize: 32,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              itemPrices[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 40),
              child: Row(
                children: [
                  Text(
                    'BHAJI',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> imageAssets = [
                    'assets/bhindimasala.png',
                    'assets/aloojeera.jpg',
                    'assets/paneerbuttermasala.jpg',
                    'assets/daltadka.jpg'
                  ];
                  List<String> itemTexts = [
                    'Bhindi Masala',
                    'Aloo Jeera',
                    'Paneer Butter Masala',
                    'Dal Tadka',
                  ];
                  List<String> itemPrices = [
                    'Rs.90',
                    'Rs.85',
                    'Rs.120',
                    'Rs.100',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imageAssets[index],
                            width: 300,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 25),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    itemTexts[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add_box),
                                  color: Colors.purple,
                                  iconSize: 32,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              itemPrices[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 40),
              child: Row(
                children: [
                  Text(
                    'VEG',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> imageAssets = [
                    'assets/vegthali.jpg',
                    'assets/rajma.jpg',
                    'assets/mixveg.jpg',
                    'assets/matarpaneer.jpg'
                  ];
                  List<String> itemTexts = [
                    'Veg Thali',
                    'Rajma',
                    'Mix Veg',
                    'Matar Paneer',
                  ];
                  List<String> itemPrices = [
                    'Rs.180',
                    'Rs.90',
                    'Rs.95',
                    'Rs.110',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imageAssets[index],
                            width: 300,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 25),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    itemTexts[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add_box),
                                  color: Colors.purple,
                                  iconSize: 32,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              itemPrices[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 40),
              child: Row(
                children: [
                  Text(
                    'RICE',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> imageAssets = [
                    'assets/plainrice.jpg',
                    'assets/vegpulao.jpg',
                    'assets/vegbiryani.jpg',
                    'assets/chickenfriedrice.jpg'
                  ];
                  List<String> itemTexts = [
                    'Plain Rice',
                    'Veg Pulao',
                    'Veg Biryani',
                    'Chicken Fried Rice',
                  ];
                  List<String> itemPrices = [
                    'Rs.60',
                    'Rs.80',
                    'Rs.110',
                    'Rs.95',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imageAssets[index],
                            width: 300,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 25),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    itemTexts[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add_box),
                                  color: Colors.purple,
                                  iconSize: 32,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              itemPrices[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 40),
              child: Row(
                children: [
                  Text(
                    'CHICKEN',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> imageAssets = [
                    'assets/chickenthali.jpg',
                    'assets/chickencurry.jpg',
                    'assets/butterchicken.jpg',
                    'assets/mughlaichicken.jpg'
                  ];
                  List<String> itemTexts = [
                    'Chicken Thali',
                    'Chicken Curry',
                    'Butter Chicken',
                    'Mughlai Chicken',
                  ];
                  List<String> itemPrices = [
                    'Rs.220',
                    'Rs.150',
                    'Rs.120',
                    'Rs.120',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imageAssets[index],
                            width: 300,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 25),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    itemTexts[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add_box),
                                  color: Colors.purple,
                                  iconSize: 32,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              itemPrices[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchMap() async {
  // Replace with the actual coordinates or address
  String mapUrl = 'https://maps.google.com/?q=Pimple+Gurav,Pune';

  // ignore: deprecated_member_use
  if (await canLaunch(mapUrl)) {
    // ignore: deprecated_member_use
    await launch(mapUrl);
  } else {
    throw 'Could not launch $mapUrl';
  }
}
