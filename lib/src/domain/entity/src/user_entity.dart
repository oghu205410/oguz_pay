import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enum/enum.dart';

part '../../../../generated/src/domain/entity/src/user_entity.g.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  final String id;
  final String username;
  final UserTypeEnum type;

  const UserEntity({
    required this.id,
    this.username = '',
    this.type = UserTypeEnum.individual,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  UserEntity copyWith({
    String? id,
    String? username,
    UserTypeEnum? type,
  }) {
    return UserEntity(
      id: id ?? this.id,
      username: username ?? this.username,
      type: type ?? this.type,
    );
  }

  @override
  List<Object?> get props => [
        id,
        username,
        type,
      ];
}
