import 'package:freezed_annotation/freezed_annotation.dart';

part 'employment.freezed.dart';
part 'employment.g.dart';

@freezed
class Employment with _$Employment {
  const factory Employment({
    required String institute,
    required String position,
    required String duration,
    required String description,
    required Map<String, String> skills,
  }) = _Employment;

  factory Employment.fromJson(Map<String, Object?> json) =>
      _$EmploymentFromJson(json);
}

class EmploymentConstants {
  static List<Employment> employmentData = [
    const Employment(
      institute: "Entelect",
      position: "Sr. Software Engineer",
      duration: "01/2021 - Present",
      description:
          "I joined Entelect at the start of 2021 for corporate project exposure."
          "My focus was on full stack development but initially I was assigned to a bank as a mobile developer."
          "I started work originally as an android developer on the banks business banking mobile application"
          "using Backbase. The bulk of the work was on the iOS side and this resulted in me pivoting and"
          "becoming proficient in swift.",
      skills: {
        "Development":
            '''Learnt how to develop and integrate APIs in android using Kotlin and Swift.''',
        "Backbase":
            '''Completed backbase training and started development on android and iOS.''',
        "Project Management":
            '''Learnt how to manage sprints and tasks using Jira and Confluence.''',
        "Interpersonal Skills":
            '''Learnt how to communicate with clarity and diplomacy in a larger team.''',
      },
    ),
    const Employment(
      institute: "Dynex.IT",
      position: "Software Engineer",
      duration: "10/2018 - 12/2020",
      description:
          "During my final year of study (4th year) I started working as a "
          "software engineer at Dynex.IT. My focus is mainly on front-end development "
          "as well as integration of back-end systems with the front-end. "
          "I also dabbled in API design and deployment.",
      skills: {
        "Development":
            '''Developed and deployed company website. Assisted in the developing of company products including Autopal''',
        "Project Management":
            '''Learnt how to communicate and manage various projects among team members. Used agile boards and sprints to achieve efficient work flow.''',
        "Integration":
            '''Learnt how to fetch data using a REST API and provide a meaningful presentation of the data.''',
        "Design Integration":
            '''Learnt how to work in collaboration with a designer in order to create and communicate meaningful information on a mobile app.''',
        "Deployment (CI/CD)":
            '''Learnt how to automate application deployment from GitHub to the google play store.''',
        "Google APIs":
            '''Using and integrating multiple google APIs such as maps and places autocomplete into a mobile app.''',
      },
    ),
    const Employment(
      institute: "Kopano.ai",
      position: "Software Engineering Intern",
      duration: "04/2018 - 10/2018",
      description:
          "During my final year of study (4th year) I started working as a "
          "software engineering intern. My focus was on front-end development in "
          "React, HTML and CSS. I collaborated in a team focused environment "
          "providing solutions and design to complex problems.",
      skills: {
        "Development":
            '''Developed and deployed company website. Assisted in the development of company products for various consumers.''',
        "Communication":
            '''Learnt how to communicate effectively and efficiently within a team setting. This was a good way for me to articulate my understanding and skills in a successful manner.''',
        "UI Enhancement":
            '''Understand and improve various front-end components and ensure the customer is satisfied with the final product.''',
      },
    ),
  ];
}
