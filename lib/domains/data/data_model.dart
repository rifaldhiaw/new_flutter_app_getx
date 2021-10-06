import 'package:equatable/equatable.dart';

class MyData extends Equatable {
  final String id;
  final String name;

  const MyData({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];

  @override
  bool get stringify => true;

  MyData copyWith({
    String? id,
    String? name,
  }) {
    return MyData(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory MyData.fromMap(Map<String, dynamic> map) {
    return MyData(
      id: map['id'],
      name: map['name'],
    );
  }
}
