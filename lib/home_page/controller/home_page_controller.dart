// ignore_for_file: unused_local_variable

import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/models/person.dart';
import 'package:instagram_clone/repositories/person_repository.dart';
import 'package:instagram_clone/rest_client/rest_client.dart';

RestClient rClient = RestClient();

class HomePageController extends GetxController {
  var personRepository = PersonRepository(restClient: rClient);

  late List<Person>? listPerson;

  final _totalLista = 0.obs;
  int get totalLista => _totalLista.value;
  set totalLista(int newValue) => _totalLista(newValue);

  @override
  void onReady() async {
    super.onReady();
    getPerson();
  }

  @override
  void onInit() async {
    await getPerson();

    super.onInit();
  }

  Future<List<Person?>?> getPerson() async {
    List<Person?>? person = [];
    try {
      person = await personRepository.findPerson();

      if (person != null) {
        for (var element in person) {
          print(element!.name);
        }
      }

      return person;
    } catch (e, s) {
      debugPrint('$e $s');
    }
    return null;
  }

  String nome = 'lucas';
}
