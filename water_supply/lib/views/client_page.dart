import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:water_supply/models/client.dart';
import 'package:water_supply/services/remote_service.dart';

class ClientPage extends StatelessWidget {
  List<Client>? clients;
  var isLoad = false;

  @override
  void initState() {
    getData();
  }

  getData() async {
    clients = await RemoteService().getClient();
    if (clients != null) {
      setState() {
        isLoad = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isLoad,
        child: Column(
          children: [
            ListTile(
              title: Text(clients.nom),
              subtitle: const Text('Lomé, Baguida'),
            ),
            const Divider(),
          ],
        ),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable: true,
                  title: Text('Client'),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Nom',
                              icon: Icon(Icons.account_box),
                            ),
                          ),
                          TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Contact",
                              icon: Icon(Icons.contact_phone),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'adresse',
                              icon: Icon(Icons.location_city),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    RaisedButton(
                        child: Text("Submit"),
                        onPressed: () {
                          // your code
                        })
                  ],
                );
              });
        },
      ),
    );
  }
}
