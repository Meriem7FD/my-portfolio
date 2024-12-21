import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/portfolio_controller.dart';

class AboutMeScreen extends StatelessWidget {
  final PortfolioController controller = Get.put(PortfolioController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("À propos de moi")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Description à gauche
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    controller.name.value,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    controller.bio.value,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Photo à droite
            CircleAvatar(
              backgroundImage: NetworkImage(controller.profilePicture.value),
              radius: 50,
            ),
          ],
        ),
      ),
    );
  }
}
