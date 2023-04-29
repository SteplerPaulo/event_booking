import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.colorScheme.primary,
        foregroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(child: Icon(Icons.person_2_outlined)),
                  SizedBox(height: 12),
                  Text(
                    "P. Biscocho",
                    style: TextStyle(
                      color: Color(0xff110c26),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.person_2_outlined),
              title: const Text("My Profile"),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.message_outlined),
              title: const Text("Message"),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.calendar_month_outlined),
              title: const Text("Calendar"),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.bookmark_outline),
              title: const Text("Bookmark"),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.email_outlined),
              title: const Text("Contact us"),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.settings_outlined),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.help_outline),
              title: const Text("Helps & FAQs"),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(Icons.logout_outlined),
              title: const Text("Sign out"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'ExploreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
