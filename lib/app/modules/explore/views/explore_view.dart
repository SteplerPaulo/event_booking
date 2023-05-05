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
            Text(
              "New York, USA",
              style: TextStyle(
                color: Color(0xfff4f4fe),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.NOTIFICATION),
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      drawer: sidebar(),
      body: Column(
        children: [
          appBarExtension(),
          const SizedBox(height: 25),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(12),
              children: [
                upcomingEvents(),
                invitationCard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: "Events",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: "Map",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Get.theme.colorScheme.primary,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            switch (value) {
              case 1:
                Get.toNamed(Routes.EVENTS);
                break;
              case 2:
                Get.toNamed(Routes.EVENT_MAP);
                break;
              case 3:
                Get.toNamed(Routes.PROFILE);
                break;
              default:
                Get.toNamed(Routes.EXPLORE);
            }
          },
        ),
      ),
    );
  }

  Widget sidebar() {
    return Drawer(
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
                CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
                SizedBox(height: 12),
                Text(
                  "Jennie Kim",
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
            leading: Image.asset("assets/icon_person.png"),
            title: const Text("My Profile"),
            onTap: () => Get.toNamed(Routes.PROFILE),
          ),
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            leading: Image.asset("assets/icon_message.png"),
            title: const Text("Message"),
            onTap: () {},
          ),
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            leading: Image.asset("assets/icon_calendar.png"),
            title: const Text("Calendar"),
            onTap: () {},
          ),
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            leading: Image.asset("assets/icon_bookmark.png"),
            title: const Text("Bookmark"),
            onTap: () {},
          ),
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            leading: Image.asset("assets/icon_email.png"),
            title: const Text("Contact us"),
            onTap: () {},
          ),
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            leading: Image.asset("assets/icon_settings.png"),
            title: const Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            leading: Image.asset("assets/icon_help.png"),
            title: const Text("Helps & FAQs"),
            onTap: () {},
          ),
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            leading: Image.asset("assets/icon_logout.png"),
            title: const Text("Sign out"),
            onTap: () => Get.offAllNamed(Routes.SIGN_IN),
          ),
        ],
      ),
    );
  }

  Widget appBarExtension() {
    return Stack(
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

  Widget upcomingEvents() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Upcoming Events", style: Get.textTheme.titleLarge),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("See All", style: Get.theme.textTheme.labelMedium),
                  const Icon(Icons.arrow_right, color: Color(0xff747688))
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
              eventCard(image: "assets/event.png"),
              eventCard(image: "assets/event-2.png"),
              eventCard(image: "assets/event.png"),
              eventCard(image: "assets/event-2.png"),
            ],
          ),
        ),
      ],
    );
  }

  Widget eventCard({image}) {
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
              Text("International Band Mu...", style: Get.textTheme.titleLarge),
              const SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Stack(
                      children: const [
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/jisoo.jpg"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/nancy.jpg"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/lisa.jpeg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "+20 Going",
                    style: TextStyle(
                      color: Color(0xFF3F38DD),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.location_on, color: Color(0xFF716E90)),
                  Text(
                    "36 Guild Street London, UK",
                    style: Get.theme.textTheme.labelMedium,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget invitationCard() {
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
            Text("Invite your friends", style: Get.textTheme.titleLarge),
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
              onPressed: () {
                Get.bottomSheet(
                  listOfFriends(),
                  isScrollControlled: false,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                );
              },
              child: const Text("Invite"),
            )
          ],
        ),
      ),
    );
  }

  Widget listOfFriends() {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text("Invite Friend", style: Get.textTheme.titleLarge),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Search",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/nancy.jpg"),
                      ),
                      title: const Text("Nancy Mcdonie"),
                      subtitle: const Text("3.4K Followers"),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: const CircleBorder(),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/profile.jpg"),
                      ),
                      title: const Text("Jennie Kim"),
                      subtitle: const Text("2K Followers"),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: const CircleBorder(),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/sana.jpg"),
                      ),
                      title: const Text("Sana Minatozaki"),
                      subtitle: const Text("1.7K Followers"),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: const CircleBorder(),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/jisoo.jpg"),
                      ),
                      title: const Text("Jisoo Kim"),
                      subtitle: const Text("1.8K Followers"),
                      trailing: Checkbox(
                        value: true,
                        onChanged: (value) {},
                        shape: const CircleBorder(),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/rose.jpg"),
                      ),
                      title: const Text("Rosee Park"),
                      subtitle: const Text("1.2K Followers"),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: const CircleBorder(),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/lisa.jpeg"),
                      ),
                      title: const Text("Lisa Manobal"),
                      subtitle: const Text("1.9K Followers"),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: const CircleBorder(),
                      ),
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(48, 12, 48, 12),
              child: ElevatedButton(
                onPressed: () => Get.back(),
                child: Row(
                  children: const [
                    Spacer(),
                    Text("INVITE"),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
