import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_details_controller.dart';

class EventDetailsView extends GetView<EventDetailsController> {
  const EventDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: const Text('Event Details'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: [
                  Image.asset("assets/event.png"),
                  const Text(
                    "International Band Music Concert",
                    style: TextStyle(
                      color: Color(0xff110c26),
                      fontSize: 35,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.calendar_month),
                    title: Text(
                      "14 December, 2021",
                      style: TextStyle(
                        color: Color(0xff110c26),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "Tuesday, 4:00PM - 9:00PM",
                      style: TextStyle(
                        color: Color(0xff747688),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text(
                      "Gala Convention Center",
                      style: TextStyle(
                        color: Color(0xff110c26),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "36 Guild Street London, UK",
                      style: TextStyle(
                        color: Color(0xff747688),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/profile.jpg"),
                    ),
                    title: const Text(
                      "Jennie Kim",
                      style: TextStyle(
                        color: Color(0xff110c26),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      "Artist",
                      style: TextStyle(
                        color: Color(0xff747688),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "About Event",
                    style: TextStyle(
                      color: Color(0xff110c26),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
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
            )
          ],
        ));
  }
}
