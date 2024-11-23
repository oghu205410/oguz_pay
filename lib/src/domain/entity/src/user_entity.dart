import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part '../../../../generated/src/domain/entity/src/user_entity.g.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  final String id;
  final String username;

  const UserEntity({
    required this.id,
    this.username = '',
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  UserEntity copyWith({
    String? id,
    String? username,
  }) {
    return UserEntity(
      id: id ?? this.id,
      username: username ?? this.username,
    );
  }

  @override
  List<Object?> get props => [
        id,
        username,
      ];
}
