import 'dart:convert';

import 'package:instagram_clone/models/person.dart';
import 'package:http/http.dart';

late List<Person> listPerson;

class PersonRepository {
  Future<List<Person>> findPerson() async {
    var url = 'https://https://randomuser.me/api/?results=5';
    var response = await get(Uri.parse(url));
    listPerson = [];

    if (response.statusCode == 200) {
      List lista = jsonDecode(response.body);
      if (lista is List) {
        for (var person in lista) {
          listPerson.add(Person.fromMap(person));
        }
      }

      return listPerson;
    } else {
      throw Exception();
    }
  }
}
