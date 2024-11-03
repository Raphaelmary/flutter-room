import 'package:flutter/material.dart';
import 'package:newapp/firstform/Details.dart';
// import 'package:newapp/formproject/DetailsForm.dart';
import 'package:newapp/formproject/dataform.dart';

enum ProductsEnums { transfer, cash }

class SubmitForm extends StatefulWidget {
  const SubmitForm({super.key});

  @override
  State<SubmitForm> createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  //variables
  ProductsEnums? _productsEnums;
  final _producttype = TextEditingController();
  final _productdescription = TextEditingController();

  bool? _ischecked = true;
  final bool _isselected = true;

  final _size = ['small', 'medium', 'large', 'x-large'];
  String? _selectedsize = '';

  //create form global key
  final _myformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Submit Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 110.0,
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Product Details Form',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 10.0),
                const SizedBox(
                  child: Icon(
                    Icons.badge,
                    size: 50.0,
                    color: Color.fromARGB(255, 210, 210, 210),
                  ),
                ),
                const SizedBox(height: 20.0),
                Form(
                  key: _myformkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _producttype,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter a product type';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            enabled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.amber,
                                style: BorderStyle.solid,
                                width: 5.0,
                                strokeAlign: 10,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            labelText: 'Select Product',
                            prefixIcon:
                                Icon(Icons.shop_2, color: Colors.amber)),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: _productdescription,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please enter a description';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                color: Colors.amberAccent,
                                width: 5,
                              )),
                          prefixIcon: Icon(
                            Icons.text_fields,
                            color: Colors.amberAccent,
                          ),
                          labelText: 'Write Description',
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile(
                              title: Text(
                                ProductsEnums.transfer.name.toUpperCase(),
                              ),
                              dense: true,
                              tileColor:
                                  const Color.fromARGB(235, 242, 240, 240),
                              value: ProductsEnums.transfer,
                              groupValue: _productsEnums,
                              onChanged: (val) {
                                setState(() {
                                  _productsEnums = val;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          Expanded(
                            child: RadioListTile(
                              value: ProductsEnums.cash,
                              tileColor:
                                  const Color.fromARGB(235, 242, 240, 240),
                              title: Text(
                                ProductsEnums.cash.name.toUpperCase(),
                              ),
                              dense: true,
                              groupValue: _productsEnums,
                              onChanged: (val) {
                                setState(
                                  () {
                                    _productsEnums = val;
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      DropdownButtonFormField(
                        // value: _selectedsize as String,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please select a size';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.0,
                            ),
                          ),
                        ),
                        items: _size
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(
                            () {
                              _selectedsize = val;
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CheckboxListTile(
                          contentPadding: const EdgeInsets.all(0),
                          value: _ischecked,
                          title: const Text(
                            'I agree to terms & conditions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                          subtitle: const Text(
                            'copyright 2024',
                            style: TextStyle(
                              // decorationStyle: TextDecorationStyle.wavy,
                              // decoration: TextDecoration.underline,
                              decorationColor: Colors.amber,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (val) {
                            setState(() {
                              _ischecked = val;
                            });
                          }),
                      const SizedBox(height: 20.0),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(
                            double.infinity,
                            50.0,
                          ),
                          backgroundColor: Colors.amber,
                          side: BorderSide.none,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (_myformkey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Dataform(
                                    product: _producttype.text,
                                  );
                                },
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'Submit Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
