import 'package:portfolio/core/models/count_widget_model.dart';
import 'package:portfolio/core/models/experience_education_model.dart';
import 'package:portfolio/core/models/quality_service_model.dart';
import 'package:portfolio/core/models/recent_work_model.dart';
import 'package:portfolio/core/models/skill_model.dart';
import 'package:portfolio/core/utils/app_assets.dart';

class MyDummeyData {
  static const String cvLink =
      "https://drive.google.com/file/d/1yPnvpDJW1NKM-TaCt1orC6RJSvOabNrb/view?usp=sharing";
  static const String githubLink =
      "https://github.com/A7mednage71?tab=repositories";
  static const String facebookLink =
      "https://www.facebook.com/profile.php?id=100038174362263";
  static const String linkedinLink =
      "https://www.linkedin.com/in/ahmed-nageh-0b941a223/";
  static const String twitterLink = "https://x.com/Ahmed_Ben_Nageh";

  static List<CountWidgetModel> countItems = [
    CountWidgetModel(topText: "Years of", bottomText: "Experience", value: "2"),
    CountWidgetModel(topText: "Project", bottomText: "Completed", value: "10+"),
    CountWidgetModel(topText: "Happy", bottomText: "Clients", value: "1"),
    CountWidgetModel(topText: "Companies", bottomText: "worked in", value: "2"),
  ];

  static List<QualityServiceModel> qualityServices = [
    QualityServiceModel(
        title: "Expertise in Flutter & Dart",
        description:
            "Proficient in building cross-platform applications for both Android and iOS using a single codebase, ensuring consistent performance across devices."),
    QualityServiceModel(
        title: "API Integration & Networking",
        description:
            "Connecting apps to RESTful or GraphQL APIs to enable dynamic data fetching and synchronization."),
    QualityServiceModel(
        title: "Firebase Integration",
        description:
            "Skilled in implementing Firebase services, such as authentication, Firestore database, push notifications (FCM), and analytics, ensuring seamless backend support for real-time data."),
    QualityServiceModel(
        title: "Payment Integration:",
        description:
            "ntegrating secure payment gateways like Stripe and PayPal into Flutter apps, making in-app transactions simple and secure"),
    QualityServiceModel(
        title: "State Management Solutions",
        description:
            "Managing app state efficiently using GetX, Provider, or Bloc for a smooth user experience"),
  ];

  static List<RecentWorkModel> myRecentWorks = [
    RecentWorkModel(
        title: "Food Delivery App",
        type: "Apps",
        projectAsset: Assets.foodDeliveryAsset,
        projectLink: "https://www.google.com/"),
    RecentWorkModel(
        title: "Cooking App",
        type: "Brands",
        projectAsset: Assets.cookingAsset,
        projectLink: "https://www.google.com/"),
    RecentWorkModel(
        title: "Coffee Shop App",
        type: "Apps",
        projectAsset: Assets.coffeeproject,
        projectLink: "https://www.google.com/"),
    RecentWorkModel(
      title: "Coin Pay App",
      type: "Apps",
      projectAsset: Assets.coinPayAsset,
      projectLink: "https://www.google.com/",
    ),
  ];

  static List<ExperienceOrEducationModel> experienceList = [
    ExperienceOrEducationModel(
        title: "Freelance Developer",
        startyear: "2023",
        endYear: "Present",
        locationOrPosition: "Remote"),
    ExperienceOrEducationModel(
        title: "Flutter Developer",
        startyear: "2024",
        endYear: "Present",
        locationOrPosition: "Bayanatz,Nasr City"),
    ExperienceOrEducationModel(
        title: "Flutter Section Head",
        startyear: "2020",
        endYear: "2024",
        locationOrPosition: "GDSC,Sohag"),
    ExperienceOrEducationModel(
        title: "Flutter instructor",
        startyear: "2024",
        endYear: "Present",
        locationOrPosition: "GDSC,Sohag"),
    ExperienceOrEducationModel(
        title: "Flutter mentor",
        startyear: "2023",
        endYear: "2024",
        locationOrPosition: "Atomika,Sohag"),
  ];

  static List<ExperienceOrEducationModel> educationList = [
    ExperienceOrEducationModel(
        title: "Complete Flutter & Dart Development Course",
        startyear: "2022",
        endYear: "2023",
        locationOrPosition: "Udemy"),
    ExperienceOrEducationModel(
        title: "Flutter Advanced Course Bloc and MVVM Pattern",
        startyear: "2023",
        endYear: "2023",
        locationOrPosition: "Udemy"),
    ExperienceOrEducationModel(
        title: "Deep Dive into Clean Architecture in Flutter",
        startyear: "2023",
        endYear: "2023",
        locationOrPosition: "Udemy"),
    ExperienceOrEducationModel(
        title: "Git and Github course",
        startyear: "2024",
        endYear: "2024",
        locationOrPosition: "Udemy"),
    ExperienceOrEducationModel(
        title: "Flutter Payment Integration course",
        startyear: "2024",
        endYear: "2024",
        locationOrPosition: "Udemy"),
    ExperienceOrEducationModel(
        title: "Mastering Responsive and Adaptive UI course",
        startyear: "2024",
        endYear: "2024",
        locationOrPosition: "Udemy"),
  ];

  static List<SkillModel> mySkills = [
    SkillModel(title: "Flutter", logo: Assets.flutterLogo, percentage: "90%"),
    SkillModel(title: "Dart", logo: Assets.dartLogo, percentage: "95%"),
    SkillModel(title: "Firebase", logo: Assets.firebaseLogo, percentage: "95%"),
    SkillModel(title: "Github", logo: Assets.githubIcon, percentage: "90%"),
    SkillModel(title: "Figma", logo: Assets.figmaLogo, percentage: "80%"),
  ];
}
