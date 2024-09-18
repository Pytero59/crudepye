import 'package:crudepye/components/user_tile.dart';
/*import 'package:crudepye/data/dummy_users.dart';
import 'package:crudepye/models/user.dart';*/
import 'package:crudepye/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crudepye/route/app_routes.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
       title: const Text('Lista de Computadores'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.user_form);
    },
              icon: const Icon(Icons.add))
        ],
      ),
    body: ListView.builder(
    itemCount: users.count,
    itemBuilder: (ctx, i) => UserTile(users.byIndex(i))));
  }
}