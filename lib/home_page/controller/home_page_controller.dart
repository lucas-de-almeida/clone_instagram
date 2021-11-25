import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/models/person.dart';
import 'package:instagram_clone/repositories/person_repository.dart';

class HomePageController extends GetxController {
  var personRepository = PersonRepository();
  late Rx<Future<List<Person>>> listPerson;
  @override
  void onInit() async {
    print('on init controller');
    listPerson = await personRepository.findPerson().obs;
    super.onInit();
  }

  String nome = 'lucas';
}
