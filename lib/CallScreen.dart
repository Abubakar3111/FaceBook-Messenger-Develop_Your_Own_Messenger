import 'package:flutter/material.dart';
class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  List<String> randomNames = [
    'Emily',
    'Alex',
    'Jasmine',
    'Brandon',
    'Sophia',
    'Marcus',
    'Isabella',
    'Jordan',
    'Olivia',
    'Carter',
  ];
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("No Calls",style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                  ),),
                  Text("Recent calls will appear here"),
                  ElevatedButton(onPressed: (){}, child: Text("Start a Call",style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                  ),))
                ],
              ),
            ),
            Text(
              "Suggestions",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 15,
                  color: Colors.grey),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(children: [    CircleAvatar(
                              radius: 20,
                              backgroundImage:   NetworkImage(
                                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                            ),SizedBox(width: 20,),
                              Text(randomNames[index], style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 15,
                              ),), ],),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              CircleAvatar(child: Icon(Icons.call,size: 20,),),
                              SizedBox(width: 10,),
                              CircleAvatar(child: Icon(Icons.video_camera_back,size: 20,),),
                            ],)
                        ],
                      ),
                    )
                );
              },
            ),
          ],
        ));
  }
}
