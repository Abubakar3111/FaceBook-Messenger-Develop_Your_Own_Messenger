import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:badges/badges.dart' as badges;
class MainChatScreen extends StatefulWidget {
  const MainChatScreen({Key? key}) : super(key: key);

  @override
  State<MainChatScreen> createState() => _MainChatScreenState();
}

class _MainChatScreenState extends State<MainChatScreen> {
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
  loaddata() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    val = prefs.getInt('val') ?? 0;
    screen = prefs.getInt('screen') ?? 0;
    setState(() {});
  }

  int val = 0;
  int screen = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
              width: width * 0.9,
              height: 42,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.02),
                  color: Colors.grey.withOpacity(0.05),
                ),
                child: TextFormField(
                  readOnly: true,
                  //controller: Searchcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: Colors.grey.withOpacity(1)),
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Search',
                    hintStyle:
                    TextStyle(color: Colors.grey.withOpacity(1)),
                    border: InputBorder.none, // Set border to none
                  ),
                ),
              )),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    badges.Badge(
                      badgeStyle: badges.BadgeStyle(
                        elevation: 50,
                        badgeColor: Colors
                            .white, // Set the badge background color to white
                      ),
                      badgeContent: Text(
                        "+",
                        style: TextStyle(fontSize: 30),
                      ),
                      position: badges.BadgePosition.topStart(
                          top: -15, start: 0), // Set badge to top left
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbwoPTEjmkJnFmVJZX8EMl18VqoZoKoC-VNiBdKsFUraKRekV1oZyjPcGTsejSs86FmHI&usqp=CAU',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Your note")
                  ],
                ),
                Row(
                  children: List.generate(
                    10, // Number of items
                        (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(randomNames[index])
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () async {
                SharedPreferences prefs =
                await SharedPreferences.getInstance();
                prefs.setInt('val', 0);
                print(prefs.getInt(
                    'val')); // Use getInt instead of getBool to retrieve an integer value
                loaddata();
              },
              child: Container(
                width: width * 0.4,
                height: 28,
                decoration: BoxDecoration(
                  color: val == 1
                      ? Colors.white
                      : Colors.grey.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 15,
                      color: val == 1 ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                SharedPreferences prefs =
                await SharedPreferences.getInstance();
                prefs.setInt('val', 1);
                print(prefs.getInt(
                    'val')); // Use getInt instead of getBool to retrieve an integer value
                loaddata();
              },
              child: Container(
                width: width * 0.4,
                height: 28,
                decoration: BoxDecoration(
                  color: val == 1
                      ? Colors.grey.withOpacity(0.08)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "CHANNELS",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 15,
                        color: val == 1 ? Colors.black : Colors.grey),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Builder(
          builder: (context) {
            if (val == 0) {
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                      ),
                      title: Text(randomNames[index]),
                      subtitle: Text(
                          'Hey i am Abubakar Asif-Full Stack Flutter App Developer.'),
                      trailing:
                      Text('${DateTime.now()}'.substring(0, 10)),
                      onTap: () {
                        // Add your onTap logic here
                      },
                    ),
                  );
                },
              );
            } else {
              return Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Text(
                      "Discover Channels",
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
                            trailing: Text('Tap to Join'),
                            onTap: () {
                              // Add your onTap logic here
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
