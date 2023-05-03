import 'package:event_booking/app/routes/app_pages.dart';
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
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              "Current Location",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 6),
            Text("New York, USA",
                style: TextStyle(
                  color: Color(0xfff4f4fe),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
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
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Get.theme.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                child: Container(
                  color: Colors.transparent,
                  width: Get.width,
                  height: 60,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        const SizedBox(width: 18),
                        category(
                          title: "Sports",
                          icon: const Icon(Icons.sports_basketball),
                          color: Colors.red,
                        ),
                        const SizedBox(width: 8),
                        category(
                          title: "Music",
                          icon: const Icon(Icons.library_music),
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 8),
                        category(
                          title: "Foods",
                          icon: const Icon(Icons.food_bank),
                          color: Colors.green,
                        ),
                        const SizedBox(width: 8),
                        category(
                          title: "Movies",
                          icon: const Icon(Icons.movie),
                          color: Colors.cyan,
                        ),
                        const SizedBox(width: 18),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(12),
              children: [
                Row(
                  children: [
                    const Text(
                      "Upcoming Events",
                      style: TextStyle(
                        color: Color(0xff110c26),
                        fontSize: 18,
                        fontFamily: "Airbnb Cereal App",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xff747688),
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Color(0xff747688),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      event(image: "assets/event.png"),
                      event(image: "assets/event-2.png"),
                      event(image: "assets/event.png"),
                      event(image: "assets/event-2.png"),
                    ],
                  ),
                ),
                invite(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget category({title, icon, color}) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(40, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {},
      icon: icon,
      label: Text(title),
    );
  }

  Widget event({image}) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.EVENT_DETAILS);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image),
              ),
              const SizedBox(height: 12),
              const Text(
                "International Band Mu...",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              Stack(
                children: const [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: const [
                  Icon(Icons.location_on),
                  Text(
                    "36 Guild Street London, UK ",
                    style: TextStyle(
                      color: Color(0xff2a2749),
                      fontSize: 13,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget invite() {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.cyan.shade100,
          image: const DecorationImage(
            image: AssetImage("assets/invitation_card.png"),
            fit: BoxFit.contain,
            alignment: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Invite your friends",
              style: TextStyle(
                color: Color(0xff110c26),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Get \$20 for ticket",
              style: TextStyle(
                color: Color(0xff484d70),
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00F8FF)),
              onPressed: () {},
              child: const Text("Invite"),
            )
          ],
        ),
      ),
    );
  }
}
