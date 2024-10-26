import 'package:flutter/material.dart';

void main() => runApp(MyCVApp());

class MyCVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taha Hamada CV',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Taha Hamada Mohamed'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle('Professional Summary'),
              SectionContent(
                  'Experienced Flutter Developer skilled in Dart and Flutter, with a strong background in API integration and Firebase services...'),

              SectionTitle('Education'),
              SectionContent(
                  'Bachelor of Computer Science and Information Systems\n'
                  'Faculty of Computers and Information, Assiut University\n'
                  'Major: Information Systems\n'
                  'Date: September 2020 – June 2024\n'
                  'GPA: Very Good (3.05)'),

              SectionTitle('Courses & Certifications'),
              SectionContent(
                  '• C++ – Grade: A (June 2020)\n'
                  '• Python – Grade: A (December 2022)\n'
                  '• Git and GitHub – Almadrasa.com (January 2024)\n'
                  '• Agile Project Management – HP LIFE (September 2024)\n'
                  '• Flutter and Dart – Udemy (October 2022 – June 2023)'),

              SectionTitle('Technical Skills and Expertise'),
              SectionContent(
                  'Programming Languages: Dart, C++, Python, Java, JavaScript\n'
                  'Flutter Development: Flutter, Hive, API Management, Firebase Services...\n'
                  'Other Technical Skills: Agile, MVC/MVVM, Web Scraping, MS Office'),

              SectionTitle('Projects'),
              ProjectLink('Snap Shop', 'https://github.com/taha2901/SnapShop'),
              ProjectDescription(
                  'E-commerce app for browsing, personalized recommendations, shopping cart management...'),

              ProjectTitle('Challenge Diabetes (Graduation Project)'),
              ProjectDescription(
                  'A health monitoring app for diabetes patients with blood sugar tracking, AI analysis...'),

              ProjectTitle('Bookly App'),
              ProjectDescription(
                  'An app for exploring books with ratings and descriptions.'),

              SectionTitle('Languages'),
              SectionContent('Arabic: Native\nEnglish: Good'),

              SectionTitle('Honors & Awards'),
              SectionContent(
                  'Academic Achievement: Graduated with a "Very Good" grade in Information Systems, Assiut University.'),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SectionContent extends StatelessWidget {
  final String content;
  SectionContent(this.content);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontSize: 16),
    );
  }
}

class ProjectTitle extends StatelessWidget {
  final String title;
  ProjectTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class ProjectDescription extends StatelessWidget {
  final String description;
  ProjectDescription(this.description);

  @override
  Widget build(BuildContext context) {
    return Text(description, style: TextStyle(fontSize: 16));
  }
}

class ProjectLink extends StatelessWidget {
  final String title;
  final String url;
  ProjectLink(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchURL(url),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }

  void launchURL(String url) async {
    // Flutter web doesn't have URL launcher, so open links manually on web.
  }
}
