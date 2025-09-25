class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// Assignment PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/a1.png',
    title: 'Games of Bones',
    subtitle:
        '2 Players Competitive Game Using Network Programing.',
    webLink:
        'https://github.com/hansits034/Game_Of_Bones',
  ),
  ProjectUtils(
    image: 'assets/projects/a2.png',
    title: 'TImer Wordle',
    subtitle:
        'Interactive Application of HTML5 Website.',
    webLink:
        'https://hansits034.github.io/gamehtml5.html',
  ),
];

// ###############
// Hobby PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/h1.png',
    title: 'MLBB Hero Quiz',
    subtitle:
        'Fun Quiz Website To Test Your Hero Knowledge In MLBB.',
    webLink:
        'https://mlbbquiz.netlify.app/',
  ),
  ProjectUtils(
    image: 'assets/projects/h2.png',
    title: 'MiYu Web3 DatingApp',
    subtitle:
        'Prototype of Web3 DatingApp For More Security.',
    webLink:
        'https://github.com/hansits034/Web3_Hackathon10_CodeFest.id',
  ),
  ProjectUtils(
    image: 'assets/projects/h3.png',
    title: 'Classify and Detoxify Toxic Comment',
    subtitle:
        'Implementation of NLP For Real Case Usage.',
    webLink:
        'https://github.com/hansits034/Toxic_Comment_Classifier_and_Detoxifier',
  ),
];