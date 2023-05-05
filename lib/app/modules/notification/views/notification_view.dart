import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            title: RichText(
              text: TextSpan(
                style: Get.textTheme.titleSmall,
                children: [
                  const TextSpan(text: "Jennie Kim"),
                  TextSpan(
                    text: " started following you",
                    style: Get.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            trailing: Text(
              "5 mins ago",
              style: Get.textTheme.bodySmall,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/nancy.jpg"),
            ),
            title: RichText(
              text: TextSpan(
                style: Get.textTheme.titleSmall,
                children: [
                  const TextSpan(text: "Nancy Macdonie"),
                  TextSpan(
                    text: " invited you to Momoland World Tour Concert",
                    style: Get.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(100, 40)),
                    onPressed: () {},
                    child: const Text("Reject"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 40)),
                    onPressed: () {},
                    child: const Text("Accept"),
                  ),
                ],
              ),
            ),
            trailing: Text(
              "1 hr ago",
              style: Get.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
