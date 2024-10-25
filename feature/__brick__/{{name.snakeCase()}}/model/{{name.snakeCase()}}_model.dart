import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}_model.g.dart'; // Ensure the file name matches your model

@JsonSerializable()
class {{name.pascalCase()}}Model extends Equatable {
  final int id;
  final String name;

  {{name.pascalCase()}}Model({
    required this.id,
    required this.name,
  });

  // Factory method for parsing from JSON
  factory {{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}ModelFromJson(json);

  // Method for serialization to JSON
  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ModelToJson(this);

  // Override props for Equatable
  @override
  List<Object?> get props => [id, name];
}
