// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      json['id'] as int?,
      json['surname'] as String?,
      json['second_name'] as String?,
      json['first_name'] as String?,
      json['phone'] as String?,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surname': instance.surname,
      'second_name': instance.secondName,
      'first_name': instance.firstName,
      'phone': instance.phone,
    };
