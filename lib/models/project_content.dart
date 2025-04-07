class ProjectContentModel {
  final String img;
  final List<String>? projectimages;
  final String title;
  final String desc;
  final String imageUrl;
  final String demo;

  ProjectContentModel({
    this.projectimages,
    required this.img,
    required this.title,
    required this.desc,
    required this.imageUrl,
    required this.demo,
  });
}
