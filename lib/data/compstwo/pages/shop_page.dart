import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  bool isSwitched = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop',
          style: TextStyle(
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Colors.cyan,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.asset('./assets/Wynk Ride.png'),
              const SizedBox(height: 20),
              const Divider(
                color: Color.fromARGB(56, 158, 158, 158),
                endIndent: 20,
                indent: 20,
                thickness: 2,
                height: 20,
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('gesture detector...');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.villa_outlined, size: 40, color: Colors.cyan),
                    Icon(Icons.person_2_outlined, size: 40, color: Colors.cyan),
                    Icon(Icons.add_location_outlined,
                        size: 40, color: Colors.cyan),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                height: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 91, 98),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    topRight: Radius.zero,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Wynk',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.wavy,
                          decorationColor: Colors.white,
                          decorationThickness: 2.0,
                          letterSpacing: 3.0,
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          debugPrint('Outlined btn');
                        },
                        style: const ButtonStyle(),
                        child: const Text(
                          "Outlined Btn",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          debugPrint('hi');
                        },
                        child: const Text(
                          'Text Button',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(58, 158, 158, 158),
                height: 50,
                indent: 40,
                endIndent: 40,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Switch(
                    value: isSwitched,
                    onChanged: (bool newBool) {
                      setState(() {
                        isSwitched = newBool;
                      });
                    },
                  ),
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? newCheck) => {
                      setState(() {
                        isChecked = newCheck;
                      })
                    },
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (bool newBool) {
                      setState(
                        () {
                          isSwitched = newBool;
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
