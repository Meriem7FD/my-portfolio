import 'package:get/get.dart';

class PortfolioController extends GetxController {
  // Données "À propos de moi"
  var name = "Foudi Meriem".obs;
  var bio = "Étudiante en informatique passionnée par le développement mobile.".obs;
  var profilePicture = "meriemm.png".obs;

  // Données des projets
  var projects = [
    {
      "title": "Système de location de véhicules",
      "description": "Une application de gestion de location développée en Java.",
      "url": "https://github.com/meriem/projet-location"
    },
    {
      "title": "Portefeuille dynamique Flutter",
      "description": "Un portfolio personnel développé avec Flutter.",
      "url": "https://github.com/meriem/flutter-portfolio"
    },
     {
      'title': 'Site pour la demande de documents de la fac',
      'description': 'Une plateforme pour demander des documents académiques.',
      'url': 'https://example.com/docs',
      'image': 'https://via.placeholder.com/150', // Image du projet
    },
  ].obs;

  // Données de contact
  var email = "foudimeriem73@gmail.com".obs;
  var phone = "0542694527".obs;
  var linkedIn = "https://linkedin.com/in/foudimeriem".obs;
}
