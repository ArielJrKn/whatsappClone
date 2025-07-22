import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'acceuil.dart';
import 'status.dart';
import 'communaute.dart';
import 'appels.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // Contrôleur pour faire défiler les pages
  late PageController _pageController;

  // Index de la page actuellement affichée
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // Initialisation du contrôleur de page
    _pageController = PageController();
  }

  @override
  void dispose() {
    // Libère le contrôleur quand le widget est détruit
    _pageController.dispose();
    super.dispose();
  }

  // Fonction appelée quand on tape sur un élément du menu
  void _onNavTapped(int index) {
    // On met à jour l’index actif
    setState(() => _currentIndex = index);

    // On fait défiler vers la page correspondante avec une animation
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 10),
      curve: Curves.easeInOut, // Animation fluide
    );
  }


PreferredSizeWidget _buildAppBar() {
  switch(_currentIndex){
    case 0:
      return AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 22, 22),
        title: const Text('WhatsApp', style: TextStyle(color: Colors.white)),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.camera_enhance_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      );

    case 1:
      return AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 22, 22),
        title: const Text('Actus', style: TextStyle(color: Colors.white)),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      );

    case 2:
      return AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 22, 22),
        title: const Text('Communautés', style: TextStyle(color: Colors.white)),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      );

    case 3:
      return AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 22, 22),
        title: const Text('Appels', style: TextStyle(color: Colors.white)),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      );
    default:
      return AppBar(
        backgroundColor: Colors.green,
        title: const Text("Erreur", style: TextStyle(color: Colors.white)),
      );
  }
}

Widget _buildfloatingActionButton(){
  switch(_currentIndex){
    case 0:
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 14, 87, 41),
        child: const Icon(Icons.message, color: Colors.white),
    );

    case 1:
      return SizedBox(
        height: 120,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton.small(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 19, 19, 19),
              child: const Icon(Icons.edit, color: Colors.white),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 14, 87, 41),
              child: const Icon(Icons.camera_alt_rounded, color: Colors.white),
            ),
          ],
        ),
      );

    case 2:
      return Container();

    case 3:
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 14, 87, 41),
        child: const Icon(Icons.add_ic_call, color: Colors.white),
    ); 
    default:
      return Container();    
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      floatingActionButton: _buildfloatingActionButton(),

      // Corps principal avec PageView
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setState(() => _currentIndex = index),
        children: const [
          AccueilPage(),
          StatusPage(),
          CommunautePage(),
          AppelsPage(),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 3, 22, 22),
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _navItem(icon: Icons.chat, label: "Accueil", index: 0),
              _navItem(icon: Icons.donut_large, label: "Status", index: 1),
              _navItem(icon: Icons.groups, label: "Communauté", index: 2),
              _navItem(icon: Icons.call, label: "Appels", index: 3),
            ],
          ),
        ),
      ),
    );
  }

  // Bouton de navigation (avec animation de fond sur l’icône active)
  Widget _navItem({required IconData icon, required String label, required int index}) {
    final isActive = _currentIndex == index;

    return GestureDetector(
      onTap: () => _onNavTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min, // CORRECTION: doit être dans Column, pas comme un enfant
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300), // CORRECTION : pas '='
              width: isActive ? 60 : 30, // CORRECTION : 'width' pas 'widht'
              height: 30,
              color: isActive ? Colors.white.withOpacity(0.1) : Colors.transparent,
              alignment: Alignment.center,
              child: Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(color: isActive ? Colors.white : Colors.grey),
          ),
        ],
      ),
    );
  }

}

// AppBar personnalisée Statique (La même pour chaque page)1
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: const Color.fromARGB(255, 3, 22, 22),
//       title: const Text('WhatsApp', style: TextStyle(color: Colors.white)),
//       actions: const [
//         IconButton(
//           onPressed: null,
//           icon: Icon(Icons.camera_enhance_outlined, color: Colors.white),
//         ),
//         IconButton(
//           onPressed: null,
//           icon: Icon(Icons.search, color: Colors.white),
//         ),
//         IconButton(
//           onPressed: null,
//           icon: Icon(Icons.more_vert, color: Colors.white),
//         ),
//       ],
//     );
//   }
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }


// Floating Action Button personnalisé Statique pour toute les pages
// class FloatingActionButtonWidget extends StatelessWidget {
//   const FloatingActionButtonWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: () {},
//       backgroundColor: const Color.fromARGB(255, 14, 87, 41),
//       child: const Icon(Icons.message, color: Colors.white),
//     );
//   }
// }


