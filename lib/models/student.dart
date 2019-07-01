import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';

@JsonSerializable()
class Student {
    Student();

    String id;
    String name;
    num score;
    
    factory Student.fromJson(Map<String,dynamic> json) => _$StudentFromJson(json);
    Map<String, dynamic> toJson() => _$StudentToJson(this);

    @override
    String toString() {
        return 'Student\n'
            'id: $id\n'
            'name: $name\n'
            'score: $score';
    }
}
