import 'package:flutter/material.dart';
import 'package:newapp/submitform/inputdetails.dart';

//create enums for Radio Buttons
enum ProductButtons { Downloads, Delivery }

enum BooksEnum { harryPorter, jameBond }

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  //form controls
  final _productname = TextEditingController();
  final _descriptioncontroller = TextEditingController();
  dynamic _productitem = '';
  bool? _checkedvalue = true; //private variable
  bool? _ischecked = true;

  //create enum values
  ProductButtons? _productEnums;
  BooksEnum? _booksEnum;

  //DropdownMenu
  _MyColors() {
    _selectedcolor = _colors[0];
  }

  final _colors = ['red', 'yellow', 'green', 'blue'];
  String? _selectedcolor = '';

  //initialize states
  @override
  void initState() {
    super.initState();

    _productname.addListener(
      () {
        setState(() {
          _productitem = _productname.text;
        });
      },
    );

    // _pricecontroller.addListener(
    //   () {
    //     setState(() {
    //       _productprice = _pricecontroller.text;
    //     });
    //   },
    // );
  }

  //this dispose function prevents memory leaks for the controllers
  @override
  void dispose() {
    _productname.dispose();
    _descriptioncontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.00,
        title: const Text(
          'Choose Catalogue',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(221, 5, 0, 35),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8.0, right: 8.0, bottom: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              Text(
                'Choose Products of Your Choice: $_productitem ',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 73, 133),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _productname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.panorama_fish_eye_sharp),
                  labelText: 'product',
                  // label: Icon(Icons.folder_open),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _descriptioncontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.note),
                  labelText: 'description',
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Checkboxes',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 73, 133),
                ),
              ),
              Checkbox(
                value: _checkedvalue,
                onChanged: (val) {
                  setState(() {
                    _checkedvalue = val;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              CheckboxListTile(
                  contentPadding: const EdgeInsets.all(5),
                  title: const Text('HTML'),
                  controlAffinity: ListTileControlAffinity.leading,
                  tileColor: Colors.amber,
                  side: const BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  activeColor: Colors.blueAccent,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  value: _ischecked,
                  onChanged: (val) {
                    setState(() {
                      _ischecked = val;
                    });
                  }),
              const SizedBox(height: 20.0),
              const Text(
                'Radio Buttons',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 73, 133),
                ),
              ),
              Radio<ProductButtons>(
                  value: ProductButtons.Delivery,
                  groupValue: _productEnums,
                  onChanged: (val) {
                    setState(
                      () {
                        _productEnums = val;
                      },
                    );
                  }),
              Radio<ProductButtons>(
                value: ProductButtons.Downloads,
                groupValue: _productEnums,
                onChanged: (val) {
                  setState(
                    () {
                      _productEnums = val;
                    },
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text(
                        BooksEnum.harryPorter.name.toLowerCase(),
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 73, 133),
                        ),
                      ),
                      tileColor: Colors.amber,
                      value: BooksEnum.harryPorter,
                      groupValue: _booksEnum,
                      dense: true,
                      onChanged: (val) {
                        setState(
                          () {
                            _booksEnum = val;
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RadioListTile(
                        value: BooksEnum.jameBond,
                        selectedTileColor: Colors.red,
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        selected: true,
                        title: Text(
                          BooksEnum.jameBond.name.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 73, 133),
                          ),
                        ),
                        dense: true,
                        tileColor: Colors.amber,
                        groupValue: _booksEnum,
                        onChanged: (val) {
                          setState(() {
                            _booksEnum = val;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              DropdownButtonFormField(
                // dropdownColor: Colors.amberAccent,
                // value: _selectedcolor,
                items: _colors
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedcolor = val as String;
                    // _MyColors();
                  });
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.color_lens_outlined),
                    fillColor: Colors.amber,
                    labelText: 'Favorite Color'),
                icon: const Icon(
                  Icons.arrow_circle_down_sharp,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 20.0),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 10, 118),
                  minimumSize: const Size(300.0, 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 225, 225, 225),
                    width: 0,
                    style: BorderStyle.solid,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return InputDetails(
                          productname: _productname.text,
                          description: _descriptioncontroller.text,
                          // clicked: _checkedvalue,
                        );
                      },
                    ),
                  );
                },
                child: Text(
                  'Submit'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
