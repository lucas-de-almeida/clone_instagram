import 'dart:convert';

import 'package:http/http.dart';

import 'package:instagram_clone/models/person.dart';
import 'package:instagram_clone/rest_client/rest_client.dart';

late List<Person> listPerson;

class PersonRepository {
  final RestClient _restClient;
  PersonRepository({
    required RestClient restClient,
  }) : _restClient = restClient;

  Future<List<Person?>?> findPerson() async {
    var url = 'https://randomuser.me/api/?results=5';

    final result = await _restClient.get<List<Person?>>(url, decoder: (data) {
      final resultData = data["results"];
      if (resultData != null) {
        return resultData
            .map<Person>((person) => Person.fromMap(person))
            .toList();
      } else {
        throw Exception();
      }
    });
    return result.body;
  }
}
