import 'package:api1/src/model/api1_model.dart';
import 'package:dio/dio.dart';

class PokemonesProvider {
  final String _url = 'https://dog.ceo/api/breeds/image/random';
  final http = Dio();

  Future obtenerDog() async {
    final response = await http.get(_url);
    List<dynamic> responseData = response.data['results'];
    responseData.map((dog) {
      return DogModel.fromJson(dog);
    }).toList();
  }
}
