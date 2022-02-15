import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer(
    int? id,
    String? surname,
    @JsonKey(name: 'second_name') String? secondName,
    @JsonKey(name: 'first_name') String? firstName,
    String? phone,
  ) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
