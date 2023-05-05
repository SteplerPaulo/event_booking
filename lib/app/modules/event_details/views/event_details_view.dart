import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/event_details_controller.dart';

class EventDetailsView extends GetView<EventDetailsController> {
  const EventDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Event Details",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/event.png"),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 50,
                right: 50,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(0.0, 2.0),
                        blurRadius: 5,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 60,
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
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
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage("assets/rose.jpg"),
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
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Invite'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                const Text(
                  "International Band Music Concert",
                  style: TextStyle(
                    color: Color(0xff110c26),
                    fontSize: 35,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.calendar_month),
                  title: Text(
                    "14 December, 2021",
                    style: Get.textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "Tuesday, 4:00PM - 9:00PM",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.location_on),
                  title: Text(
                    "Gala Convention Center",
                    style: Get.textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "36 Guild Street London, UK",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/lisa.jpeg"),
                  ),
                  title: Text("Lisa", style: Get.theme.textTheme.titleMedium),
                  subtitle: Text(
                    "Artist",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 12),
                Text("About Event", style: Get.theme.textTheme.titleLarge),
                const SizedBox(height: 12),
                const Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 12, 48, 12),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Spacer(),
                  Text("BUY TICKET \$120"),
                  Spacer(),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
