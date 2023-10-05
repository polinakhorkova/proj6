import 'package:dio/dio.dart';
import 'models/getProd/getProd.dart';
import 'models/product/product.dart';

void main(List<String> arguments) async {
  Dio httpClient = Dio();
  String url = 'https://myfakeapi.com/api/cars/';
  var response = await httpClient.get(url);
  GetProd data = GetProd.fromJson(response.data);
  List<Cars> carsMassive = data.cars;
  double minimum = 1000000.0;
  int iD = 0;
  for (var el in carsMassive) {
    String str = el.price;
    if (double.parse(str.substring(1)) < minimum && el.availability == true) {
      minimum = double.parse(str.substring(1));
      iD = el.id;
    }
  }
  print(iD);
  print(minimum);
}
