import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/portfolio_controller.dart';

class ProjectsScreen extends StatelessWidget {
  final PortfolioController controller = Get.put(PortfolioController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mes Projets")),
      body: ListView.builder(
        itemCount: controller.projects.length,
        itemBuilder: (context, index) {
          var project = controller.projects[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(project['title']!),
              subtitle: Text(project['description']!),
              trailing: IconButton(
                icon: Icon(Icons.open_in_new),
                onPressed: () {
                  // Ouvre l'URL du projet dans un navigateur
                  Get.snackbar("Lien Projet", project['url']!);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
