import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Cars with _$Cars {

  factory Cars({
    required int id,
    required String availability,
    required String price,


  }) = _Cars;

  factory Cars.fromJson(Map<String, dynamic> json) => _$CarsFromJson(json);
}