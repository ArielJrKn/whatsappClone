import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'convers.dart';

// class AccueilPage extends StatelessWidget {
//   const AccueilPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Accueil', style: TextStyle(color: Colors.white, fontSize: 24)),
//     );
//   }
// }

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 3, 22, 22),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: TextButton(
                  onPressed: null,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        Icon(
                          Icons.archive,
                          size: 30,
                          color: Colors.white,
                        ),
                        Container(padding: EdgeInsets.all(5)),
                        Text(
                          'Archive',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ))),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/bla.png'),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ariel kinkin',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '26/04/2025',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            'Les messages éphémères ont été désactivé...',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.5)),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => ConversPage(
                                ),
                              ),
                            );
                          },
                          onLongPress: (){},
                          ),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
