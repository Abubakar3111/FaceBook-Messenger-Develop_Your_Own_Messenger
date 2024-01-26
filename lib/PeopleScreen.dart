import 'package:flutter/material.dart';
class PeopleScreen extends StatefulWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
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
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Facebook updates(200)",
              style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                  fontFamily: 'Raleway',
                  fontSize: width * 0.04),
              textAlign: TextAlign.center,
            ),
            Text(
              "SEE ALL",
              style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Raleway',
                  fontSize: width * 0.04),
              textAlign: TextAlign.center,
            ),
          ],
        ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                  ),
                  title: Text(randomNames[index]),
                  subtitle: Text(
                      'Hey i am Abubakar Asif-Full Stack Flutter App Developer.I have Added a Video'),

                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chats in your Comuunities",
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontFamily: 'Raleway',
                    fontSize: width * 0.04),
                textAlign: TextAlign.center,
              ),
              Text(
                "SEE ALL",
                style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Raleway',
                    fontSize: width * 0.04),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://yt3.googleusercontent.com/3K6h6gpMPf4mK9qh6SXTl0W3PLxnOMzUnFHc2lbS9t-ucS-b4JGcR8nW7ja9XDYkHM-kAnijk2c=s900-c-k-c0x00ffffff-no-rj'),
                  ),
                  title:
                  Text("ICC-International Cricket Council"),
                  subtitle: Text(
                      'Hey i am Abubakar Asif-Full Stack Flutter App Developer.'),
                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Suggested Comuunities",
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontFamily: 'Raleway',
                    fontSize: width * 0.04),
                textAlign: TextAlign.center,
              ),
              Text(
                "SEE ALL",
                style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Raleway',
                    fontSize: width * 0.04),
                textAlign: TextAlign.center,
              ),
            ],
          ),  ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(3),
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      backgroundImage: NetworkImage(
                          'https://vectorseek.com/wp-content/uploads/2023/06/Asia-Cup-2023-Logo-Vector.jpg')),
                  title: Text("ACC-Asian Cricket Council"),
                  subtitle: Text(
                      'Hey i am Abubakar Asif-Full Stack Flutter App Developer.'),

                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
              );
            },
          )
        ],
      ),);
  }
}
