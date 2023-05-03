import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_map_controller.dart';

class EventMapView extends GetView<EventMapController> {
  const EventMapView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Map'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Map here...',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
