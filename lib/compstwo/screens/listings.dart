import 'package:flutter/material.dart';
import 'package:newapp/compstwo/variables/variables.dart';

class Listings extends StatefulWidget {
  const Listings({super.key});

  @override
  State<Listings> createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        automaticallyImplyLeading: false,
        toolbarHeight: 100.0,
        leading: const Icon(Icons.arrow_back_ios_rounded),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_alarm,
              size: 40.0,
            ),
          ),
          const CircularProgressIndicator(backgroundColor: Colors.green),
          const SizedBox(width: w)
        ],
      ),
      body: Container(
        width: wi,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(),
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                onTap: () {
                  debugPrint("${(index + 1)}");
                },
                leading: const Icon(Icons.person, size: 40, color: Colors.cyan),
                title: Text('Raphaelmary ${(index)}'),
                titleTextStyle: const TextStyle(color: Colors.cyan),
                subtitle: const Text('DevSecOps Engr.'),
                subtitleTextStyle: const TextStyle(
                  color: Color.fromARGB(190, 158, 158, 158),
                ),
                trailing: const Icon(
                  Icons.edit,
                  size: 25,
                  color: Color.fromARGB(255, 151, 10, 0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
