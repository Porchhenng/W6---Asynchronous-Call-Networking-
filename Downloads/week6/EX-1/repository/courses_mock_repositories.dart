import '../models/course.dart';
import 'courses_repository.dart';

class CoursesMockRepositories extends CoursesRepository {
  List<Course> mockCourseData = [
    Course(name: 'Html'),
    Course(name: 'Flutter'),
    Course(name: 'Java')
  ];

  
  @override
  List<Course> getCourses() {
    return mockCourseData;
  }
  
  @override
  void addScore(Course course, CourseScore score) {
    course.addScore(score);
  }
}
