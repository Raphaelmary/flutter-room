import 'package:flutter/material.dart';
// import 'package:fudrat/routes/welcome.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();
  final String _LoginData = 'my name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.amber.withOpacity(0.7),
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(builder: (BuildContext context) {
            //   return const Welcome();
            // }));
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('./assets/kali2.jpg', fit: BoxFit.cover),
            Divider(
                height: 60,
                thickness: 1,
                color: Colors.amber.withOpacity(0.7),
                indent: 40,
                endIndent: 40),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 20),
              margin: const EdgeInsets.all(8),
              // height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 0), blurRadius: 1, spreadRadius: 0),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    _LoginData,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(),
                    child: TextField(
                      controller: email,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'username',
                        prefixIcon: const Icon(Icons.email, size: 30),
                        prefixIconColor: Colors.amber,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
