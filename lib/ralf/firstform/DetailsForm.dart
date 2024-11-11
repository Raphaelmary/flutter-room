import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/ralf/firstform/Details.dart';

class Detailsform extends StatefulWidget {
  const Detailsform({super.key});

  @override
  State<Detailsform> createState() => _Detailsform();
}

class _Detailsform extends State<Detailsform> {
  var _productname = 'this'; //this is a private variable
  var _nameofproduct;
  final _productcontroller = TextEditingController();
  void _updatename(val) {
    setState(() {
      _productname = val;
    });
  }

  @override
  void initState() {
    super.initState();

    _productcontroller.addListener(() {
      setState(() {
        _nameofproduct = _productcontroller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          'Registeration Form',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The name of the product is: $_productname'),
              const SizedBox(height: 10.0),
              TextField(
                onChanged: (val) {
                  _updatename(val);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    focusColor: Colors.red,
                    hintText: 'Email'),
              ),
              const SizedBox(height: 10.0),
              Text('Your password is $_nameofproduct'),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: _productcontroller,
                // obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_rounded),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 10.0),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const Details();
                    }),
                  );
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
                child: Text('Submit Form'.toUpperCase()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
