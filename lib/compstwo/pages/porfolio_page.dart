import 'package:flutter/material.dart';
import 'package:newapp/compstwo/pages/home_page.dart';
import 'package:newapp/compstwo/pages/shop_page.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  int items = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Portfolio',
            style: TextStyle(
                color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          automaticallyImplyLeading: false,
          leading: const Icon(
            Icons.person_4,
            size: 30,
            color: Colors.cyan,
          ),
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 245, 245, 245)),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(),
        child: ListView.builder(
          itemCount: items,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                onTap: () {
                  debugPrint("${(index + 1)}");
                },
                leading: const Icon(Icons.person, size: 40, color: Colors.cyan),
                title: const Text('Raphaelmary'),
                titleTextStyle: const TextStyle(color: Colors.cyan),
                subtitle: const Text('DevSecOps Engr.'),
                subtitleTextStyle:
                    const TextStyle(color: Color.fromARGB(190, 158, 158, 158)),
                trailing: const Icon(Icons.edit,
                    size: 25, color: Color.fromARGB(255, 151, 10, 0)),
              ),
            );
          },
        ),
      ),
    );
  }
}
