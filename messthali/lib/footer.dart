import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool _isMessHovered = false;
  bool _isPolicyHovered = false;
  bool _isHelpHovered = false;
  bool _isTermsHovered = false;
  bool _isContactHovered = false;
  bool _isStarterHovered = false;
  bool _isVegHovered = false;
  bool _isNonVegHovered = false;
  bool _isDessertHovered = false;
  bool _isBeverageHovered = false;
  bool _isFacebookHovered = false;
  bool _isInstagramHovered = false;
  bool _isYouTubeHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Mess Thali',
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(
          Icons.dining_rounded,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 630,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              height: 200,
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, left: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'QUICK LINKS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 15),
                              _buildLink('Apply for mess', _isMessHovered, () {
                                setState(() {
                                  _isMessHovered = !_isMessHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink('Privacy Policy', _isPolicyHovered,
                                  () {
                                setState(() {
                                  _isPolicyHovered = !_isPolicyHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink('Help and support', _isHelpHovered,
                                  () {
                                setState(() {
                                  _isHelpHovered = !_isHelpHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink(
                                  'Terms and conditions', _isTermsHovered, () {
                                setState(() {
                                  _isTermsHovered = !_isTermsHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink('Contacts', _isContactHovered, () {
                                setState(() {
                                  _isContactHovered = !_isContactHovered;
                                });
                              }),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'CATEGORIES',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 15),
                              _buildLink('Starters', _isStarterHovered, () {
                                setState(() {
                                  _isStarterHovered = !_isStarterHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink('Veg', _isVegHovered, () {
                                setState(() {
                                  _isVegHovered = !_isVegHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink('Non-Veg', _isNonVegHovered, () {
                                setState(() {
                                  _isNonVegHovered = !_isNonVegHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink('Desserts', _isDessertHovered, () {
                                setState(() {
                                  _isDessertHovered = !_isDessertHovered;
                                });
                              }),
                              const SizedBox(height: 10),
                              _buildLink('Beverage', _isBeverageHovered, () {
                                setState(() {
                                  _isBeverageHovered = !_isBeverageHovered;
                                });
                              }),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CONTACTS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: Color.fromARGB(255, 94, 94, 94),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Kundan Apartment, 1st Floor,\n Sadashiv Peth, Pune-411030',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 23),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.phone_android,
                                    color: Color.fromARGB(255, 94, 94, 94),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    '+91 9623468564',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 23),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Color.fromARGB(255, 94, 94, 94),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'admin@messthali.com',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, right: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'KEEP IN TOUCH',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 35,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.grey[900],
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14),
                                        child: TextFormField(
                                          style: const TextStyle(
                                              color: Colors.white),
                                          decoration: const InputDecoration(
                                            hintText: 'Your email',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      color: Colors.green,
                                      width: 35,
                                      height: 35,
                                      child: const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 40),
                              const Text(
                                'Follow Us',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          _isFacebookHovered = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _isFacebookHovered = false;
                                        });
                                      },
                                      child: Transform.translate(
                                        offset: Offset(
                                            0, _isFacebookHovered ? -5 : 0),
                                        child: Image.asset(
                                          'assets/facebook_icon.png',
                                          width: 35,
                                          height: 32,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {},
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          _isInstagramHovered = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _isInstagramHovered = false;
                                        });
                                      },
                                      child: Transform.translate(
                                        offset: Offset(
                                            0, _isInstagramHovered ? -5 : 0),
                                        child: Image.asset(
                                          'assets/instagram_icon.png',
                                          width: 35,
                                          height: 35,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {},
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          _isYouTubeHovered = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _isYouTubeHovered = false;
                                        });
                                      },
                                      child: Transform.translate(
                                        offset: Offset(
                                            0, _isYouTubeHovered ? -5 : 0),
                                        child: Image.asset(
                                          'assets/youtube_icon.png',
                                          width: 35,
                                          height: 35,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Copyright © 2024 MessThali - Telphatech LLP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLink(String title, bool isHovered, VoidCallback onTap) {
    return MouseRegion(
      onEnter: (_) {
        onTap();
      },
      onExit: (_) {
        onTap();
      },
      child: Row(
        children: [
          Transform.translate(
            offset: isHovered ? const Offset(8, 0) : Offset.zero,
            child: Text(
              title,
              style: TextStyle(
                color: isHovered ? Colors.white70 : Colors.grey[700],
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 12),
          if (isHovered)
            const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
        ],
      ),
    );
  }
}
