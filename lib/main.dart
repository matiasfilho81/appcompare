import 'package:flutter/material.dart';

import 'Photo.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCubic,
    ).drive(Tween(begin: 0, end: 2));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text("Oi, vamos começar por aqui!");

    // GestureDetector(
    //   onTap: () {
    //     controller
    //       ..reset()
    //       ..forward();
    //   },
    //   child: RotationTransition(
    //     turns: animation,
    //     child: Stack(
    //       children: [
    //         Positioned.fill(
    //           child: FlutterLogo(),
    //         ),
    //         Center(
    //           child: Text(
    //             'Click me!',
    //             style: TextStyle(
    //               fontSize: 60.0,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
  getRestSerialized() async{
    Response response=await Dio().request(
        'https://jsonplacehelder.typicode.code.com/todos',
          options: Options(helders: {"Acepet":"aplication/json"})
                    );
                    List<User> users= List<User>();
                    for (Map<String ,dynamic>json in response .data){
                      User user=User.fromJson(json);
                      print(user.title);
                      users.add(user);
                          
                            }
                          
                          
                            }
                            getSerializedJson() async{
                              Response response=await Dio().request(
                          'https://jsonplacehelder.typicode.code.com/todos',
                            options: Options(helders: {"Acepet":"aplication/json"})
                            );
                            print(response.data);
                              List<Photo>photos=List<Photo>();
                             for (Map<String ,dynamic>json in response .data){
                               Photo.photo=Photo.fromJson (json);
                              
                             var photo;
                              print(photo.thumb);
                               photos.add(photo);
                          
                             }
                            
                          
                          
                            }
                  
                    Dio() {}
          
            Options({Map<String, String> helders}) {}
              }
    
    class Response {
  get data => null;
}
        
        class User {
  Object get title => null;

      static User fromJson(Map<String, User > json) {}
}

