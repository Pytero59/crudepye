import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de usuário'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              final isValid = _form.currentState!.validate();

              if (isValid) {
                _form.currentState?.save();
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Nome'),

                  validator: (value) {
                    if (value == null || value
                        .trim()
                        .isEmpty) {
                      return 'Informe um nome com no mínimo 2 linhas.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    print(value);
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'E-mail'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Url do Avatar'),
                ),
              ],
            )),
      ),
    );
  }
}