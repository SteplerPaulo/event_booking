import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/events_controller.dart';

class EventsView extends GetView<EventsController> {
  const EventsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Events'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchEvent(),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          eventImage(),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                eventDateTime(),
                                const SizedBox(height: 12),
                                eventTitle(),
                                const SizedBox(height: 12),
                                eventLocation(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget searchEvent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    Get.bottomSheet(
                      filters(),
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.filter_list),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget eventImage() {
    return SizedBox(
      width: 75,
      height: 100,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Image.network(
          "https://picsum.photos/seed/${Random().nextInt(99) + 1}/200/300",
        ),
      ),
    );
  }

  Widget eventDateTime() {
    return const Text(
      "Wed, Apr 28 • 5:30 PM",
      style: TextStyle(
        color: Color(0xff5668ff),
        fontSize: 13,
      ),
    );
  }

  Widget eventTitle() {
    return const Text(
      "Jo Malone London’s Mother’s Day Presents",
      style: TextStyle(
        color: Color(0xff110c26),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget eventLocation() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.location_on,
          color: Colors.grey,
          size: 20,
        ),
        SizedBox(width: 6),
        Text(
          "Radius Gallery • Santa Cruz, CA ",
          style: TextStyle(
            color: Color(0xff747688),
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  Widget filters() {
    return Container(
      height: Get.height / 1.2,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Filter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          const Spacer(),
          filterCategories(),
          const Spacer(),
          filterDateAndTime(),
          const Spacer(),
          filterLocation(),
          const Spacer(),
          filterActionsButton(),
        ],
      ),
    );
  }

  Widget filterCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const Icon(Icons.sports_basketball_outlined),
              ),
              const SizedBox(height: 12),
              const Text('Sports'),
            ],
          ),
          const SizedBox(width: 24),
          Column(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const Icon(
                  Icons.music_note_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 12),
              const Text('Music'),
            ],
          ),
          const SizedBox(width: 24),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const Icon(Icons.brush),
              ),
              const SizedBox(height: 12),
              const Text('Art'),
            ],
          ),
          const SizedBox(width: 24),
          Column(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const Icon(
                  Icons.restaurant_menu_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 12),
              const Text('Foods'),
            ],
          ),
          const SizedBox(width: 24),
          Column(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const Icon(
                  Icons.movie,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 12),
              const Text('Movies'),
            ],
          ),
        ],
      ),
    );
  }

  Widget filterDateAndTime() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Time & Date"),
        const SizedBox(height: 12),
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Text("Today"),
            ),
            const SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Tommorow"),
            ),
            const SizedBox(width: 12),
            OutlinedButton(
              onPressed: () {},
              child: const Text("This week"),
            ),
          ],
        ),
        const SizedBox(height: 12),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.calendar_month),
              SizedBox(width: 8),
              Text("Choose from calendar"),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward_ios, size: 15),
            ],
          ),
        ),
      ],
    );
  }

  Widget filterLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Time & Date"),
        const SizedBox(height: 12),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.map),
              Spacer(),
              Text("Phillipines"),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 15),
            ],
          ),
        ),
      ],
    );
  }

  Widget filterActionsButton() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Reset"),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Apply"),
          ),
        ),
      ],
    );
  }
}
