import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamart/OnBoarding/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Image.asset(
                        "assets/images/goku.webp",
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 41, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text("Email")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              _buildSection(
                icon: Icons.shopping_cart_outlined,
                title: "Orders",
              ),
              _buildSection(
                icon: Icons.navigation_outlined,
                title: "Delivery Address",
              ),
              _buildSection(
                icon: Icons.receipt_long_rounded,
                title: "Promo Code",
              ),
              _buildSection(
                icon: Icons.notifications_none_rounded,
                title: "Notifications",
              ),
              _buildSection(
                icon: Icons.question_mark_sharp,
                title: "Help",
              ),
              _buildSection(
                icon: Icons.attribution_outlined,
                title: "About",
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  Get.off(() => LoginPage());
                },
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 238, 234, 234),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.input),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required IconData icon, required String title}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide.none,
          left: BorderSide.none,
          right: BorderSide.none,
          bottom: BorderSide.none,
        ),
      ),
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    icon,
                    size: 30,
                  ),
                  SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
