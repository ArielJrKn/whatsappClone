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

class Message {
  final String content;
  final bool isMe;

  Message({required this.content, required this.isMe,});
}

class ConversPage extends StatefulWidget {
  const ConversPage({super.key});

  @override
  State<ConversPage> createState() => _ConversPageState();
}

class _ConversPageState extends State<ConversPage> {
  int _appBarState = 0;
  PreferredSizeWidget _buildAppBar() {
    switch (_appBarState) {
      case 0:
        return AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 22, 22),
          title: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/bla.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ariel KINKIN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Text(
                            "en ligne auj. à 01:31",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera, color: Colors.white)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.call, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.white))
          ],
        );

      default:
        return AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 22, 22),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/bla.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ariel KINKIN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "en ligne auj. à 01:31",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
    }
  }
 
List<Message> messages = [
  Message(content :'premier message', isMe: false),
  Message(content :'deuxième message', isMe: false),
  Message(content :'troisième message', isMe: true),
  Message(content :'quatrième message', isMe: true),
  Message(content :'deuxième message', isMe: false),
  Message(content :"dis moi quand et comment utiliser final avec quelques exemples...et je voudrais savoir si je peux utiliser decoration : boxDecoration dans n'importe quel widget...?", isMe: false),
  Message(content :'deuxième message', isMe: false),
];

final TextEditingController _controller = TextEditingController();

void _sendMessage (){
  final text = _controller.text.trim();
  if(text.isNotEmpty){
    messages.add(Message(content: text, isMe: true));
  }
  _controller.clear();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index){
              final msg = messages[index];
              return Align(
                alignment: msg.isMe ? Alignment.centerRight : Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: msg.isMe ? const Color.fromARGB(255, 3, 22, 22) : const Color.fromARGB(255, 33, 34, 34),
                    borderRadius: msg.isMe ? BorderRadius.circular(25) : BorderRadius.circular(25),
                  ),
                  child: Text(msg.content, style: TextStyle(fontSize: 10, color: Colors.white),),
                ),
                )
              );
            }
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          color: Colors.transparent,
          height: 60,
          child: Row(
            children: [
              // Conteneur avec fond stylé et arrondi
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    color: Color.fromARGB(255, 25, 39, 39),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.sticky_note_2)),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            controller : _controller,
                            decoration: InputDecoration(
                              hintText: 'Message',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.join_full)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions)),


                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(width: 8),

              // Bouton envoyer
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.send, color: Colors.black),
                  onPressed: _sendMessage,
                ),
              ),
            ],
          ),
        ));
  }
}
