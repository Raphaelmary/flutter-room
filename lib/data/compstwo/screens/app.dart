// // import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// // import 'package:fudrat/variables/variables.dart';
// // import 'package:fudrat/widgets/favorites.dart';
// // import 'package:/fudrat/screens/root_page.dart';
// // import 'package:flutter/gestures.dart';
// // import 'package:get/get.dart';
// // import 'package:TapGestureRecognizer/TapGestureRecognizer.dart';

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// String username = '';
// String email = '';
// String password = '';

// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     double wi = MediaQuery.of(context).size.width;
//     double hi = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       appBar: AppBar(
//         titleSpacing: 3,
//         title: const Text(
//           'medillence',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 18.0,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         elevation: 0.0,
//         automaticallyImplyLeading: false,
//         toolbarHeight: 100.0,
//         backgroundColor: const Color.fromARGB(255, 11, 1, 47),
//         leading: IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.menu_open_rounded),
//             iconSize: iconS,
//             color: Colors.white),
//         actions: const <Widget>[
//           Icon(
//             Icons.search,
//             size: iconS,
//             color: Colors.white,
//           ),
//         ],
//       ),

//       //floatingActionButton
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: const Color.fromARGB(255, 11, 1, 47),
//         onPressed: () {},
//         child: const Icon(Icons.add, size: iconS, color: Colors.white),
//       ),

//       //navigationMenu
//       bottomNavigationBar: NavigationBar(
//         backgroundColor: const Color.fromARGB(255, 246, 244, 244),
//         elevation: 0.0,
//         surfaceTintColor: Colors.red,
//         destinations: const <Widget>[
//           NavigationDestination(
//               icon: Icon(Icons.home, color: Color.fromARGB(255, 11, 1, 47)),
//               label: 'Home',
//               tooltip: 'Home'),
//           NavigationDestination(
//               icon: Icon(Icons.person, color: Color.fromARGB(255, 11, 1, 47)),
//               label: 'Profile'),
//           NavigationDestination(
//               icon: Icon(Icons.notifications_active,
//                   color: Color.fromARGB(255, 11, 1, 47)),
//               label: 'Alerts'),
//         ],
//         onDestinationSelected: (index) {},
//         selectedIndex: 0,
//       ),

//       //body
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const Favorites(),
//             const SizedBox(height: 10.0),
//             Container(
//               decoration: const BoxDecoration(),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       decoration: const BoxDecoration(),
//                       child: CircleAvatar(
//                         // backgroundImage: AssetImage('./assets/logo.png'),
//                         backgroundColor: const Color.fromARGB(255, 18, 0, 82),
//                         foregroundColor: Colors.white,
//                         radius: 50,
//                         child: isSwitched
//                             ? const Icon(
//                                 Icons.accessibility_new_sharp,
//                                 size: 60,
//                                 color: Color.fromARGB(255, 224, 224, 224),
//                               )
//                             : const Icon(
//                                 Icons.person_pin_outlined,
//                                 size: 60,
//                                 color: Color.fromARGB(255, 224, 224, 224),
//                               ),
//                       ),
//                     ),
//                     const SizedBox(height: 20.0),
//                     Switch(
//                       value: isSwitched,
//                       focusColor: Colors.blue,
//                       activeColor: Colors.red,
//                       inactiveThumbColor: const Color.fromARGB(224, 11, 1, 47),
//                       onChanged: (bool? newSwitch) {
//                         setState(() {
//                           isSwitched = newSwitch!;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 20.0),
//                     Container(
//                       width: double.maxFinite,
//                       decoration: const BoxDecoration(),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Username: ${(nameController.text.trim())}',
//                               style: const TextStyle(
//                                   fontSize: 16.0, fontStyle: FontStyle.italic)),
//                           Text('Useremail: ${(emailController.text.trim())}',
//                               style: const TextStyle(
//                                   fontSize: 16.0, fontStyle: FontStyle.italic)),
//                           Text('Password: ${(passwordController.text.trim())}',
//                               style: const TextStyle(
//                                   fontSize: 16.0, fontStyle: FontStyle.italic)),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20.0),
//                     TextField(
//                       keyboardType: TextInputType.name,
//                       controller: nameController,
//                       decoration: const InputDecoration(
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 238, 237, 237)),
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 239, 239, 239)),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color.fromARGB(255, 239, 239, 239),
//                           ),
//                         ),
//                         hintText: 'Username',
//                         prefixIcon: Icon(Icons.person),
//                         suffixIcon: Icon(Icons.edit),
//                       ),
//                     ),
//                     const SizedBox(height: 20.0),
//                     TextField(
//                       keyboardType: TextInputType.emailAddress,
//                       controller: emailController,
//                       decoration: const InputDecoration(
//                         hintText: 'Email',
//                         suffix: Icon(Icons.edit),
//                         prefixIcon: Icon(
//                           Icons.email,
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey),
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 239, 239, 239)),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 239, 239, 239)),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20.0),
//                     TextField(
//                       obscureText: true,
//                       controller: passwordController,
//                       decoration: const InputDecoration(
//                         prefixIcon: Icon(Icons.password_outlined),
//                         suffixIcon: Icon(Icons.edit),
//                         hintText: 'password',
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(250, 233, 233, 233)),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(250, 233, 233, 233)),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(250, 233, 233, 233)),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20.0),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Container(),
//                         ),
//                         RichText(
//                           text: const TextSpan(
//                             text: 'I agree to terms and conditions',
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 17.0,
//                             ),
//                           ),
//                         ),
//                         Checkbox(
//                             value: isChecked,
//                             onChanged: (bool? newCheck) {
//                               setState(() {
//                                 // debugPrint("${(!isChecked)}");
//                                 debugPrint("${(isChecked = newCheck!)}");
//                               });
//                             })
//                       ],
//                     ),
//                     const SizedBox(height: 20.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           // username = '${(nameController.value)}';
//                         });
//                       },
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.only(
//                             top: 15.0, right: 40.0, bottom: 15.0, left: 40.0),
//                         backgroundColor: const Color.fromARGB(255, 11, 1, 47),
//                       ),
//                       child: const Text(
//                         'SUBMIT',
//                         style: TextStyle(
//                             fontSize: 18.0,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     const SizedBox(height: 20.0),
//                     RichText(
//                       text: const TextSpan(
//                         text: 'sign up using one of the following ',
//                         style: TextStyle(color: Colors.grey, fontSize: 16.0),
//                         children: [
//                           TextSpan(
//                             text: 'create',
//                             style: TextStyle(
//                               color: Color.fromARGB(114, 251, 30, 22),
//                               fontSize: 20.0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const Divider(
//                       height: 80.0,
//                       thickness: 1.0,
//                       color: Color.fromARGB(50, 11, 1, 47),
//                       indent: 30,
//                       endIndent: 30,
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                         text: 'use your social media',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 17.0,
//                           decoration: TextDecoration.underline,
//                           decorationStyle: TextDecorationStyle.wavy,
//                           decorationThickness: 2.0,
//                           decorationColor: Color.fromARGB(92, 255, 82, 82),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 50),
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Icon(Icons.facebook,
//                             size: 50.0,
//                             color: Color.fromARGB(255, 0, 6, 168),
//                             semanticLabel: 'facebook'),
//                         Icon(
//                           Icons.inbox,
//                           size: 50.0,
//                           color: Color.fromARGB(255, 149, 11, 1),
//                           semanticLabel: 'email',
//                         ),
//                         Icon(
//                           Icons.account_circle,
//                           size: 50,
//                           color: Color.fromARGB(255, 0, 105, 4),
//                           semanticLabel: 'LinkedIn',
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 30),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             Container(
//               margin: const EdgeInsets.all(10.0),
//               width: wi,
//               height: hi * 0.3,
//               // width: double.maxFinite,
//               // height: double.maxFinite,
//               decoration: const BoxDecoration(
//                 color: Colors.red,
//                 image: DecorationImage(
//                   image: AssetImage('./assets/kali2.jpg'),
//                   fit: BoxFit.cover,
//                 ),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10.0),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 5.0,
//                     spreadRadius: 5.0,
//                     offset: Offset(0, 0),
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Center(
//                   child: RichText(
//                     text: const TextSpan(
//                       text: 'Gallery',
//                       style: TextStyle(
//                         fontSize: 40.0,
//                         color: Color.fromARGB(255, 255, 255, 255),
//                       ),
//                       // recognizer: TapGestureRecognizer()
//                       //   ..onTap = () => Get.to(() => const RootPage()),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             Wrap(
//               children: List<Widget>.generate(
//                 3,
//                 (index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: CircleAvatar(
//                       radius: 30,
//                       backgroundColor: const Color.fromARGB(255, 11, 1, 47),
//                       child: CircleAvatar(
//                         backgroundImage:
//                             // ignore: prefer_interpolation_to_compose_strings
//                             AssetImage('./assets/' + social[index]),
//                         radius: 20,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
