import 'package:flutter/material.dart';

// class CommunautePage extends StatelessWidget {
//   const CommunautePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Accueil', style: TextStyle(color: Colors.white, fontSize: 24)),
//     );
//   }
// }

class CommunautePage extends StatefulWidget {
  const CommunautePage({super.key});

  @override
  State<CommunautePage> createState() => _CommunautePageState();
}

class _CommunautePageState extends State<CommunautePage> {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('communauté', style: TextStyle(color: Colors.black, fontSize: 24)),
    );
  }
}