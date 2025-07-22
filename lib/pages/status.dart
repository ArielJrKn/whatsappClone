import 'package:flutter/material.dart';

// class StatusPage extends StatelessWidget {
//   const StatusPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Accueil', style: TextStyle(color: Colors.black, fontSize: 24)),
//     );
//   }
// }

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  int options = 1;

  Widget _OptionRow() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: options == 1
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      options = 1; // ou ce que tu veux
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 211, 210)
                          .withOpacity(0.2),
                      foregroundColor: Colors.white),
                  child: Text('Tout'),
                )
              : OutlinedButton(
                  onPressed: () {
                    setState(() {
                      options = 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white.withOpacity(0.5)),
                  child: Text('Tout'),
                ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: options == 2
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      options = 2; // ou ce que tu veux
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 211, 210)
                          .withOpacity(0.2),
                      foregroundColor: Colors.white),
                  child: Text('Status'),
                )
              : OutlinedButton(
                  onPressed: () {
                    setState(() {
                      options = 2;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white.withOpacity(0.5)),
                  child: Text('Status'),
                ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: options == 3
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      options = 3; // ou ce que tu veux
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 211, 210)
                          .withOpacity(0.2),
                      foregroundColor: Colors.white),
                  child: Text('Chaînes'),
                )
              : OutlinedButton(
                  onPressed: () {
                    setState(() {
                      options = 3;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white.withOpacity(0.5)),
                  child: Text('Chaînes'),
                ),
        ),
      ],
    );
  }

  Widget _StatusOption() {
    switch (options) {
      case 1:
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: _OptionRow(),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 100,
                          padding: EdgeInsets.only(left: 5),
                          child: Image.asset(
                            'assets/images/jj.jpeg',
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 100,
                          padding: EdgeInsets.only(left: 5),
                          child: Image.asset(
                            'assets/images/jj.jpeg',
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chaînes',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Tenez-vous au courant des sujets qui vous intéressent. Trouvez des chaînes à suivre ci-dessous.',
                      style: TextStyle(
                          fontSize: 15, color: Colors.white.withOpacity(0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Trouvez des chaînes à suivre',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/meta.png'),
                    ),
                    title: Text(
                      'Meta',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text('254 M followers',
                        style: TextStyle(color: Colors.white.withOpacity(0.5))),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 19, 43, 20),
                        foregroundColor:
                            const Color.fromARGB(255, 130, 190, 132),
                      ),
                      child: Text('Suivre'),
                    ),
                  ),
                );
              },
              childCount: 4,
            )),
            SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Voir plus",
                        style: TextStyle(color: Colors.green),
                      )),
                ],
              ),
            ))
          ],
        );
      case 2:
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: _OptionRow(),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            ),
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 3,
                                  )),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/bla.png'),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mon status',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Hier',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Mise à jour récente',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 2,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.transparent,
                                width: 3,
                              )),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/bla.png'),
                          ),
                        ),
                      ),
                      title: Text(
                        'Lenovo',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'il y a 20 minutes',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      onTap: () {},
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chaînes',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Tenez-vous au courant des sujets qui vous intéressent. Trouvez des chaînes à suivre ci-dessous.',
                      style: TextStyle(
                          fontSize: 15, color: Colors.white.withOpacity(0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Trouvez des chaînes à suivre',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/meta.png'),
                    ),
                    title: Text(
                      'Meta',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text('254 M followers',
                        style: TextStyle(color: Colors.white.withOpacity(0.5))),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 19, 43, 20),
                        foregroundColor:
                            const Color.fromARGB(255, 130, 190, 132),
                      ),
                      child: Text('Suivre'),
                    ),
                  ),
                );
              },
              childCount: 4,
            )),
            SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Voir plus",
                        style: TextStyle(color: Colors.green),
                      )),
                ],
              ),
            ))
          ],
        );
      case 3:
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: _OptionRow(),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            ),
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 3,
                                  )),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/bla.png'),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mon status',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Hier',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Mise à jour récente',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 2,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.transparent,
                                width: 3,
                              )),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/bla.png'),
                          ),
                        ),
                      ),
                      title: Text(
                        'Lenovo',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'il y a 20 minutes',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      onTap: () {},
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chaînes',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Tenez-vous au courant des sujets qui vous intéressent. Trouvez des chaînes à suivre ci-dessous.',
                      style: TextStyle(
                          fontSize: 15, color: Colors.white.withOpacity(0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Trouvez des chaînes à suivre',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/meta.png'),
                    ),
                    title: Text(
                      'Meta',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text('254 M followers',
                        style: TextStyle(color: Colors.white.withOpacity(0.5))),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 19, 43, 20),
                        foregroundColor:
                            const Color.fromARGB(255, 130, 190, 132),
                      ),
                      child: Text('Suivre'),
                    ),
                  ),
                );
              },
              childCount: 4,
            )),
            SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Voir plus",
                        style: TextStyle(color: Colors.green),
                      )),
                ],
              ),
            ))
          ],
        );
      default:
        return Center(
          child:
              Text("Option par défaut", style: TextStyle(color: Colors.white)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 3, 22, 22),
      child: _StatusOption(),
    );
  }
}
