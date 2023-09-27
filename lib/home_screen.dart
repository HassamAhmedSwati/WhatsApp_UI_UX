import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title:  Text('WhatsApp',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold)),
            backgroundColor: Colors.teal,
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.people_alt,),
              ),
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ]),
            actions: [
              Icon(Icons.camera_alt,color: Colors.white54,),
              SizedBox(width: 20),
              Icon(Icons.search,color: Colors.white54,),
              PopupMenuButton(
                  icon:const Icon(Icons.more_vert_outlined,color: Colors.white54,),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                          value: '1',
                          child: Text('New group'),
                        ),
                        PopupMenuItem(
                          value: '2',
                          child: Text('New broadcast'),
                        ),
                        PopupMenuItem(
                          value: '3',
                          child: Text('Linked devices'),
                        ),
                        PopupMenuItem(
                          value: '4',
                          child: Text('Starred messages'),
                        ),
                        PopupMenuItem(
                          value: '1',
                          child: Text('Setting'),
                        ),
                      ]),
            ],
          ),
          body:  TabBarView(
            children: [
              Text('Community'),
              ListView.builder(
                itemCount: 50,
                  itemBuilder: (context,index){
                    return  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/yasir.jpg'),
                      ),
                      title: Text('Yasir Raza Attari'),
                      subtitle: Row(
                        children: [
                          Icon(index%3==0? Icons.check:Icons.done_all,
                            color: index%3==0?Colors.black87: Colors.blue,),
                          Text('Where are you?'),
                        ],
                      ),
                      trailing: Text('8:40 PM'),
                    );
                  }),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading:  Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/yasir.jpg'),
                        ),
                      ),
                      title: const Text('Yasir Raza Attari'),
                      subtitle: Row(
                        children:[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(index%3==0? '13 minute ago': '30 minute ago'),
                          ),
                        ],
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/yasir.jpg'),
                      ),
                      title: const Text('Yasir Raza Attari'),
                      subtitle: Row(
                        children:[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Icon(index%3==0?Icons.call_made:Icons.call_received,
                                color: index%3==0?Colors.green:Colors.red,),
                          ),
                          Text(index%2==0? '6:40 PM' : '8:16 PM'),
                        ],
                      ),
                      trailing: Icon(index % 3 == 0 ? Icons.phone: Icons.video_call,color: Colors.teal,),
                    );
                  }),
            ],
          ),
        ));
  }
}
