import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'MESS THALI',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        leading: const Icon(
          Icons.food_bank_rounded,
          size: 55,
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
                      'assets/messthali.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 360,
                    right: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 160,
                              height: 40,
                              child: TextButton.icon(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return const Color.fromARGB(
                                            255, 136, 135, 135);
                                      }
                                      return const Color.fromARGB(
                                          255, 136, 135, 135);
                                    },
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                  ),
                                ),
                                icon: const Icon(Icons.photo,
                                    color: Colors.white),
                                label: const Text(
                                  'View Photo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 160,
                              height: 40,
                              child: TextButton.icon(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return const Color.fromARGB(
                                            255, 136, 135, 135);
                                      }
                                      return const Color.fromARGB(
                                          255, 136, 135, 135);
                                    },
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                  ),
                                ),
                                icon: const Icon(Icons.favorite,
                                    color: Colors.white),
                                label: const Text(
                                  'Wishlist',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, top: 30),
                          child: Text(
                            'INTRODUCTION',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50, right: 50, top: 15),
                        child: Text(
                          'Messthali, a venture under Telphatech LLP, strives to streamline the process of finding mess providers. Our mission is to connect individuals with nearby mess services, leveraging technology to simplify the search process. We envision a world where accessing the right mess is effortless, aiming to be the go-to platform for all mess-related needs. Our offerings include a comprehensive database of local mess providers, ensuring users can easily locate the services they require. With a user-friendly website design, users can effortlessly search for providers, read reviews, and make informed decisions. \n\nWe prioritize community-driven reviews, empowering users to share experiences and guide others. Additionally, our dedicated support team, supported by Telphatech LLP, stands ready to address any inquiries or concerns. Messthali is committed to enhancing the mess-searching experience, making it convenient and efficient for individuals everywhere.',
                          style: TextStyle(
                            fontSize: 16,
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
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, right: 50),
                    child: Image.asset('indian_food.jpeg',
                        width: 320, height: 300, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 60, top: 50),
              child: Row(
                children: [
                  const Text(
                    'CATEGORY',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 20),
              child: SizedBox(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      List<String> imageAssets = [
                        'assets/bhaji_icon.jpeg',
                        'assets/rice_icon.jpeg',
                        'assets/vegthali_icon.jpeg',
                        'assets/chicken_icon.jpeg',
                        'assets/nasta_icon.jpeg',
                      ];
                      List<String> itemTexts = [
                        'BHAJI',
                        'RICE',
                        'VEG THALI',
                        'CHICKEN',
                        'NASTA',
                      ];
                      index %= min(imageAssets.length, itemTexts.length);
                      return Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Container(
                          padding: const EdgeInsets.all(32),
                          width: 160,
                          height: 160,
                          child: Column(
                            children: [
                              Image.asset(
                                imageAssets[index],
                                width: 120,
                                height: 95,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(height: 24),
                              Text(
                                itemTexts[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w800,
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
              padding: EdgeInsets.only(left: 50, right: 50, top: 10),
              child: Text(
                'MENU',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
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
                      color: Colors.black,
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
                    'assets/masaladosaimage.jpeg',
                    'assets/pohaimage.jpeg'
                  ];
                  List<String> itemTexts = [
                    'Pav Bhaji',
                    'Misal Pav',
                    'Masala Dosa',
                    'Poha',
                  ];
                  List<String> itemPrices = [
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Image.asset(
                              imageAssets[index],
                              width: 300,
                              height: 185,
                              fit: BoxFit.cover,
                            ),
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
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
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
                    'VEG THALI',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
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
                    'assets/masaladosaimage.jpeg',
                    'assets/pohaimage.jpeg'
                  ];
                  List<String> itemTexts = [
                    'Pav Bhaji',
                    'Misal Pav',
                    'Masala Dosa',
                    'Poha',
                  ];
                  List<String> itemPrices = [
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Image.asset(
                              imageAssets[index],
                              width: 300,
                              height: 185,
                              fit: BoxFit.cover,
                            ),
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
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
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
                      color: Colors.black,
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
                    'assets/masaladosaimage.jpeg',
                    'assets/pohaimage.jpeg'
                  ];
                  List<String> itemTexts = [
                    'Pav Bhaji',
                    'Misal Pav',
                    'Masala Dosa',
                    'Poha',
                  ];
                  List<String> itemPrices = [
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Image.asset(
                              imageAssets[index],
                              width: 300,
                              height: 185,
                              fit: BoxFit.cover,
                            ),
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
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
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
                      color: Colors.black,
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
                    'assets/masaladosaimage.jpeg',
                    'assets/pohaimage.jpeg'
                  ];
                  List<String> itemTexts = [
                    'Pav Bhaji',
                    'Misal Pav',
                    'Masala Dosa',
                    'Poha',
                  ];
                  List<String> itemPrices = [
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Image.asset(
                              imageAssets[index],
                              width: 300,
                              height: 185,
                              fit: BoxFit.cover,
                            ),
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
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
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
                      color: Colors.black,
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
                    'assets/masaladosaimage.jpeg',
                    'assets/pohaimage.jpeg'
                  ];
                  List<String> itemTexts = [
                    'Pav Bhaji',
                    'Misal Pav',
                    'Masala Dosa',
                    'Poha',
                  ];
                  List<String> itemPrices = [
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                    'Rs. 60',
                  ];

                  index %= min(imageAssets.length, itemTexts.length);
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Image.asset(
                              imageAssets[index],
                              width: 300,
                              height: 185,
                              fit: BoxFit.cover,
                            ),
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
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
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
