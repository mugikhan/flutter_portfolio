import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String project,
    required String title,
    required String description,
    required String appPhotos,
    required String projectLink,
    required Map<String, String> techUsed,
    required String? buttonText,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}

class ProjectConstants {
  static List<Project> projects = [
    const Project(
      project: "Autopal flutter app",
      title: "Autopal",
      description:
          "South Africa's most powerful search engine for new and used cars",
      appPhotos: "autopal.png",
      projectLink: "https://autopal.co.za/about/index.html",
      techUsed: {"Flutter": "flutter.png"},
      buttonText: "Website",
    ),
    const Project(
      project: "Findafunder website",
      title: "Findafunder",
      description: "Broader, Accessible funding",
      appPhotos: "findafunder.png",
      projectLink:
          "https://web.archive.org/web/20211119111656/https://www.findafunder.co.za/",
      techUsed: {
        "Javascript": "javascript.png",
        "AWS": "aws.png",
        "MySQL": "mysql.png"
      },
      buttonText: "Website",
    ),
  ];
}
