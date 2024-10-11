import 'package:portfolio/core/models/count_widget_model.dart';
import 'package:portfolio/core/models/quality_service_model.dart';

class DumyLists {
  static List<CountWidgetModel> countItems = [
    CountWidgetModel(
        topText: "Years of", bottomText: "Experience", value: "14"),
    CountWidgetModel(topText: "Project", bottomText: "Completed", value: "50+"),
    CountWidgetModel(topText: "Happy", bottomText: "Clients", value: "1.5K"),
    CountWidgetModel(topText: "Stars in", bottomText: "Github", value: "250"),
  ];

  static List<QualityServiceModel> qualityServices = [
    QualityServiceModel(
        title: "Expertise in Flutter & Dart",
        description:
            "Proficient in building cross-platform applications for both Android and iOS using a single codebase, ensuring consistent performance across devices."),
    QualityServiceModel(
        title: "Firebase Integration",
        description:
            "Skilled in implementing Firebase services, such as authentication, Firestore database, push notifications (FCM), and analytics, ensuring seamless backend support for real-time data."),
    QualityServiceModel(
        title: "Custom UI/UX Design",
        description:
            "Skilled in creating user-friendly interfaces and experiences that meet the needs of clients and end-users."),
    QualityServiceModel(
        title: "Payment Integration:",
        description:
            "ntegrating secure payment gateways like Stripe and PayPal into Flutter apps, making in-app transactions simple and secure"),
  ];
}
