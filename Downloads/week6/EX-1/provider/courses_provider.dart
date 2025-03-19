import '../models/course.dart';
import '../repository/courses_repository.dart';

class CoursesProvider {
  static late final CoursesProvider _instance;

  final CoursesRepository repository;

  CoursesProvider._internal(this.repository);

  static void initialize(CoursesRepository repo){
    _instance = CoursesProvider._internal(repo);
  }
  static List<Course> getCourses() {
    return _instance.repository.getCourses();
  }

  static Course getCourseFor(String courseName){
    return _instance.repository.getCourses().where((course) => course.name == courseName).first;
  }

  void addScore(String courseName, CourseScore score){
    Course? course = getCourseFor(courseName);
    _instance.repository.addScore(course, score);
  }
}