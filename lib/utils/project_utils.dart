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

//####################
//HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/1.png',
    title: 'Birthday invitation',
    subtitle:
        "This is a Birthday invitation site for my uncle.",
    webLink:
        'https://akylbek-birthday-xap9.vercel.app/',
  ),
  ProjectUtils(
    image: 'assets/projects/2.png',
    title: 'Dice Roller',
    subtitle:
        'Just dummy app that rolls the dice in variations.',
    webLink:
        'https://bembido-diceroller.netlify.app/',
  ),
  ProjectUtils(
    image: 'assets/projects/3.png',
    title: 'Expence Tracker',
    subtitle:
        'This is a dummy expense tracker app that already provides with datas',
    webLink:
        'https://bembido-expense-tracker.netlify.app/',
  ),
  ProjectUtils(
    image: 'assets/projects/4.png',
    title: 'Meals App',
    subtitle:
        'This is simple meals app that provides with categories',
    webLink:
        'https://dainty-parfait-9db2a9.netlify.app/',
  ),
  // ProjectUtils(
  //   image: 'assets/projects/05.png',
  //   title: 'Todo App',
  //   subtitle: 'This is a simple task management app with persistent storage',
  //   androidLink:
  //       'https://play.google.com/store/apps/details?id=com.shohatech.todo',
  //   iosLink: 'https://apps.apple.com/us/app/eduza-todo/id6443970333',
  // ),
  // ProjectUtils(
  //   image: 'assets/projects/06.png',
  //   title: 'NotePad App',
  //   subtitle: 'This is a note taking app for MacOS and Android',
  //   androidLink:
  //       'https://play.google.com/store/apps/details?id=com.shohatech.notepad',
  //   iosLink: 'https://apps.apple.com/us/app/eduza-notepad/id6443973859',
  // ),
];


//###########
//WORK PROJECTS
List<ProjectUtils> workProjects = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: 'English Brain Craft',
    subtitle:
        'This is an English learning app for students to learn English through various methods.',
    androidLink:
        'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
    iosLink:
        'https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714',
  ),

  ProjectUtils(
    image: 'assets/projects/w02.png',
    title: 'Online Shop Web App',
    subtitle:
        'This is a responsive online shop web application for car engine oil.',
    webLink: 'https://www.elo.best',
  ),

  ProjectUtils(
    image: 'assets/projects/w03.jpeg',
    title: 'Advertisement Management System',
    subtitle:
        'This is an Advertisement Management System to buy, sell, and manage advertisement.',
    webLink: 'https://www.externally.unavailable.project',
  ),
];
