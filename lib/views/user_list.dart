
import 'package:crudepye/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Map users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
       title: const Text('Lista de Usuarios'),
      ),
    body: ListView.builder(
    itemCount: users.length,
    itemBuilder: (ctx, i) => Text(users.values.elementAt(i).name)),
    );
  }
}