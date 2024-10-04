import 'package:http/http.dart' as http;
import 'package:meridian_test/core/apikeys.dart';

class ApiRepository {
  Future<http.Response> fetchData()async{
    final response= await http.get(Uri.parse(ApiKeys.apiUrl));
    return response;
  }
}