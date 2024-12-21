import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import du package
import '../controllers/portfolio_controller.dart';

class ContactMeScreen extends StatelessWidget {
  final PortfolioController controller = Get.put(PortfolioController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contactez-moi")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icône et email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, size: 24, color: Colors.blue),
                  SizedBox(width: 10),
                  Text(
                    "Email: ${controller.email.value}",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Icône et téléphone
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, size: 24, color: Colors.blue),
                  SizedBox(width: 10),
                  Text(
                    "Téléphone: ${controller.phone.value}",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Icône LinkedIn
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.linkedin, size: 24, color: Colors.blue), // Icône LinkedIn
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Get.snackbar("Lien LinkedIn", controller.linkedIn.value);
                    },
                    child: Text(
                      "LinkedIn: ${controller.linkedIn.value}",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
