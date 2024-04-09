// header widget
const String maintxt = "Main";
const String projects = "Projects";

//about me widget
const String aboutMeTitle = "ABOUT ME";
const String aboutMeText =
    "As an enthusiastic student hailing from Krakow, I bring forth practical experience and unwavering dedication as a Flutter developer. My motivation stems from a genuine love for Flutter, and I am eager to further develop my skills in this dynamic field.";

//contact widegt
const String contactEmail = "matvii.zakrevskyi@gmail.com";

//education widget
const String educationTitle = "EDUCATION";
const String educationSubtitle = "Bachelor of Engineering in Computer Science";
const String educationPlace = "WSEI Krakow";
const String educationDate = "October 2020 - Present";

//languages widget
const String languagesTitle = "LANGUAGES";
const String languagesEnglish = "English";
const String languagesEnglishValue = "B1";
const String languagesPolish = "Polish";
const String languagesPolishValue = "B2";
const String languagesUkrainian = "Ukrainian";
const String languagesUkrainianValue = "native";

//hard skills widget
const String hardSkillsTitle = "HARD SKILLS";
const List<String> hardSkills = [
  "Good knowledge in Flutter and Dart(1+ year experience)",
  "Knowledge of Dart libraries, such as: BLoC, Dio, Hive, RXDart, Freezed, GetIt, injector",
  "OOP, SOLID, Design patterns",
  "Databases: SQL NoSQL",
  "Experience with clean architecture",
];

//projects title widget
const String projetcsTitle = "MY PROJECTS";
const String projetcsSubtitle = "for self-development";

const String projectsTools = "Tools and Technologies";

//first project widget
const String firstProjectTitle = "GitHub API Project";
const String firstProjectPartOne =
    "This is a simple application that uses the GitHub API. It allows you to search for repositories and add them to your favorites.";
const String firstProjectPartTwo =
    "The search works by repository name, and I used the Dio library for queries. There are only two screens in the project: HomeScreen, where you can search for repositories, and FavoritesScreen, where you can see your favorite repositories. The repositories that were found last are saved to the local database, so if you log in to the program again, the Home screen will not be empty, but the last repositories found will be displayed as history. Similarly, all your favorite repositories are also saved. This all works with Hive DB, all repositories are stored in this local database. For state management, I used the BLoC library, namely Cubit.";
const String firstProjectPartThree =
    "The main goals for this project were to use Hive to store some data, try to implement the Dependency Injection design pattern using the injection and getIt libraries, and write the project in Clean Architecture.";
const String firstProjectTools =
    "Dart, Flutter, Bloc, Hive, Dio, GetIt with Injector, Shared Preferences";

//second project widget
const String secondProjectTitle = "Flutter Messanger";
const String secondProjectPartOne =
    "I wanted to write a project using Firebase, and given the functionality of Realtime Database, the first thing that came to mind was to make a messenger application.";
const String secondProjectPartTwo =
    "In total, the project looks very simple, there is a page for authorization, a page with all user chats, a page for searching for users, and a page for the chat with the user. Registration and login work with Firebase Authentication (email and password). All data, such as user data and chat data, is stored in the Realtime Database. I used this particular database because it has the ability to listen to changes in database collections, so it was very easy to implement chat.";
const String secondProjetcPartThree =
    "I also used the BLoC library for state management. In the project, I tried to stick to Clean Architecture, so the project is quite easy to read.";
const String secondProjectTools =
    "Dart, Flutter, Bloc, Firebase, GetIt with Injector, Shared Preferences";

//third project widget
const String thirdProjectTitle = "CV Project";
const String thirdProjectText =
    "And also this web project. I decided to write it in order to try to write a web project in Flutter. In total, this is a very simple project with only two pages. I used the Responsive Framework library in the project to make the project look good on different devices. I used the BLoC library for state management.";
const String thirdProjectTools = "Dart, Flutter, Bloc, Responsive Framework";

//title widget
const String mainTitle = "MATVII ZAKREVSKYI";
const String mainSubtitle = "FLUTTER DEVELOPER";

//work experience widget
const String workTitle = "WORK EXPERIENCE";
const String workSubtitle = "Junior Mobile Developer, Eleviate, Warsaw";
const String workDate = "June 2023 - February 2024";
const String workLink = "eleviate.io";
const String workTextPartOne = "Eleviate";
const String workTextPartTwo =
    " is a fitness app where users can create fitness plans or use ready-made ones for sports. The project also has a Mindfulness part with great meditations.";
const String workResponsibilitiesTitle = "Responsibilities on the project";
const String workResponsibilities = "creating new features, improving existing ones and fixing bugs.";
const String workTools = "Dart, Flutter, Bloc, Freezed, Dio, Git, VS Code, Android Studio,  SQL and NoSQL, GetIt with Injector, Shared Preferences, GraphQL, Jira";

