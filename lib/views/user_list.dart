import 'package:crudepye/components/user_tile.dart';
import 'package:crudepye/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    Map users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
       title: const Text('Lista de Usuarios'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
        ],
      ),
    body: ListView.builder(
    itemCount: users.length,
    itemBuilder: (ctx, i) => Text(users.values.elementAt(i))));
  }
}