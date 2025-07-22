import 'package:flutter/material.dart';

// class AppelsPage extends StatelessWidget {
//   const AppelsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Accueil', style: TextStyle(color: Colors.white, fontSize: 24)),
//     );
//   }
// }

class AppelsPage extends StatefulWidget {
  const AppelsPage({super.key});

  @override
  State<AppelsPage> createState() => _AppelsPageState();
}

class _AppelsPageState extends State<AppelsPage> {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('appels', style: TextStyle(color: Colors.black, fontSize: 24)),
    );
  }
}