import 'package:http/http.dart' as http;
import 'student.dart';
import 'dart:convert';

Future<Student> fetchStudentData() async {
  final response =
  await http.get('http://henfanzao.me/student.json'); // 从目的地址获取JSON

  if (response.statusCode == 200) {
    // 返回Future<Student>
    return Student.fromJson(jsonDecode(response.body));
  } else {
    // 加载失败
    throw Exception('Error');
  }
}
