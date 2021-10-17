import 'package:equatable/equatable.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}} extends Equatable {
  final String id;
  
  const {{#pascalCase}}{{name}}{{/pascalCase}}({
    required this.id,
  });

  @override
  List<Object> get props => [id];

  @override
  bool get stringify => true;

  {{#pascalCase}}{{name}}{{/pascalCase}} copyWith({
    String? id,
  }) {
    return {{#pascalCase}}{{name}}{{/pascalCase}}(
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }

  factory {{#pascalCase}}{{name}}{{/pascalCase}}.fromMap(Map<String, dynamic> map) {
    return {{#pascalCase}}{{name}}{{/pascalCase}}(
      id: map['id'],
    );
  }
}
