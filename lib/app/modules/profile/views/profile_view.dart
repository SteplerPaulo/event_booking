import 'package:event_booking/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.EXPLORE),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Profile'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
        children: [
          mainProfile(),
          aboutMe(),
          const SizedBox(height: 18),
          interest(),
        ],
      ),
    );
  }

  Widget mainProfile() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
          const SizedBox(height: 12),
          Text(
            "Jennie Kim",
            style: Get.textTheme.headlineMedium,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    "350",
                    style: TextStyle(
                      color: Color(0xff110c26),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Following",
                    style: TextStyle(
                      color: Color(0xff747688),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                width: 50,
                endIndent: 0,
                indent: 0,
                color: Colors.black,
                thickness: 1,
              ),
              Column(
                children: const [
                  Text(
                    "346",
                    style: TextStyle(
                      color: Color(0xff110c26),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Followers",
                    style: TextStyle(
                      color: Color(0xff747688),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.border_color),
            label: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }

  Widget aboutMe() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Me', style: Get.textTheme.titleLarge),
        const SizedBox(height: 24),
        const Text(
          "Enjoy your favorite dishes and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More",
        ),
      ],
    );
  }

  Widget interest() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Interest", style: Get.textTheme.titleLarge),
            const Spacer(),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.border_color,
                size: 18,
              ),
              label: const Text('Change'),
            )
          ],
        ),
        Wrap(
          spacing: 8,
          children: const [
            Chip(
              label: Text("Games Online"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Concert"),
              backgroundColor: Colors.red,
            ),
            Chip(
              label: Text("Music"),
              backgroundColor: Colors.orange,
            ),
            Chip(
              label: Text("Art"),
              backgroundColor: Colors.purple,
            ),
            Chip(
              label: Text("Movie"),
              backgroundColor: Colors.green,
            ),
            Chip(
              label: Text("Others"),
              backgroundColor: Colors.cyan,
            ),
          ],
        ),
      ],
    );
  }
}
