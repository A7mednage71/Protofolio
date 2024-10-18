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
  static const String emailLink = "https://ahmdnajkh71@gmail.com";

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

  static List<RecentWorkModel> myRecentWorks = [
    RecentWorkModel(
        title: "Web Development",
        type: "Web Development",
        projectAsset: "assets/images/portfolio.png",
        projectLink: "https://www.google.com/"),
    RecentWorkModel(
        title: "Android Development",
        type: "Android Development",
        projectAsset: "assets/images/portfolio.png",
        projectLink: "https://www.google.com/"),
    RecentWorkModel(
        title: "Flutter Development",
        type: "Flutter Development",
        projectAsset: "assets/images/portfolio.png",
        projectLink: "https://www.google.com/"),
    RecentWorkModel(
      title: "Android Development",
      type: "Android Development",
      projectAsset: "assets/images/portfolio.png",
      projectLink: "https://www.google.com/",
    ),
  ];

  static List<ExperienceOrEducationModel> experienceList = [
    ExperienceOrEducationModel(
        title: "Flutter Development",
        startyear: "2022",
        endYear: "Present",
        locationOrPosition: "sohag,tema"),
    ExperienceOrEducationModel(
        title: "Flutter Development",
        startyear: "2020",
        endYear: "2024",
        locationOrPosition: "sohag,tema"),
    ExperienceOrEducationModel(
        title: "Flutter Development",
        startyear: "2020",
        endYear: "2024",
        locationOrPosition: "persons,new york"),
    ExperienceOrEducationModel(
        title: "Flutter Development",
        startyear: "2020",
        endYear: "2024",
        locationOrPosition: "Blockchain,london"),
  ];

  static List<ExperienceOrEducationModel> educationList = [
    ExperienceOrEducationModel(
        title: "Programming Cource",
        startyear: "2022",
        endYear: "Present",
        locationOrPosition: "sohag,tema"),
    ExperienceOrEducationModel(
        title: "Design Cource",
        startyear: "2020",
        endYear: "2024",
        locationOrPosition: "sohag,tema"),
    ExperienceOrEducationModel(
        title: "Flutter Cource",
        startyear: "2020",
        endYear: "2024",
        locationOrPosition: "persons,new york"),
    ExperienceOrEducationModel(
        title: "Flutter Cource",
        startyear: "2020",
        endYear: "2024",
        locationOrPosition: "Blockchain,london"),
  ];

  static List<SkillModel> mySkills = [
    SkillModel(title: "Flutter", logo: Assets.flutterLogo, percentage: "90%"),
    SkillModel(title: "Dart", logo: Assets.dartLogo, percentage: "95%"),
    SkillModel(title: "Firebase", logo: Assets.firebaseLogo, percentage: "95%"),
    SkillModel(title: "Github", logo: Assets.githubIcon, percentage: "95%"),
    SkillModel(title: "Figma", logo: Assets.figmaLogo, percentage: "55%"),
  ];
}
