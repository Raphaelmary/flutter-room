import 'package:flutter/material.dart';
// import 'package:fudrat/routes/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            './assets/codePro.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('./assets/WynkLogo.png'),
                    minRadius: 50,
                    maxRadius: 65,
                    backgroundColor: Color.fromARGB(184, 255, 255, 255),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) {
                      //       return const Login();
                      //     },
                      //   ),
                      // );
                      debugPrint('get started...');
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(
                            top: 13, left: 40, bottom: 13, right: 40),
                        backgroundColor: Colors.white),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20, color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
