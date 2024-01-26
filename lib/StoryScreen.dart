import 'package:flutter/material.dart';
class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
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
    return  Padding(padding: EdgeInsets.all(10),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.add),
                      // You can use other properties like backgroundColor, foregroundImage, etc.
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Add a story",style: TextStyle(color: Colors.white),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://media.licdn.com/dms/image/D4D03AQGmSOJMy1gXFg/profile-displayphoto-shrink_800_800/0/1696849746979?e=2147483647&v=beta&t=7TU1PrqIXEh-qkFYlReGkrYwHZp5RW68VcyWFpqY1kw'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child:
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Set the border color
                          width: 3.0, // Set the border width
                        ),
                        shape: BoxShape.circle, // Ensure the container is a circle
                      ),
                      child: CircleAvatar(
                        radius: 20.0, // Set the radius of the circular avatar
                        backgroundColor: Colors.blue, // Set the background color
                        backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        // You can use other properties like foregroundImage, child, etc.
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Abubakar Asif",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w900),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://media.licdn.com/dms/image/D4D22AQHZr7CVCHXxWg/feedshare-shrink_800/0/1688722592914?e=2147483647&v=beta&t=TNl3cTfA5yYElstbD8g6bSHiQCJs8g6GKjo-JM-lSRk'),         fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child:
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Set the border color
                          width: 3.0, // Set the border width
                        ),
                        shape: BoxShape.circle, // Ensure the container is a circle
                      ),
                      child: CircleAvatar(
                        radius: 20.0, // Set the radius of the circular avatar
                        backgroundColor: Colors.blue, // Set the background color
                        backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        // You can use other properties like foregroundImage, child, etc.
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Abubakar Asif",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w900),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://media.licdn.com/dms/image/D4D16AQGZX4co9ehKKA/profile-displaybackgroundimage-shrink_200_800/0/1699716734086?e=2147483647&v=beta&t=clAEAbxzRt94nlBxvsA6Vm31-lCC-cgwGegzH_6IT6U'),    fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child:
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Set the border color
                          width: 3.0, // Set the border width
                        ),
                        shape: BoxShape.circle, // Ensure the container is a circle
                      ),
                      child: CircleAvatar(
                        radius: 20.0, // Set the radius of the circular avatar
                        backgroundColor: Colors.blue, // Set the background color
                        backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        // You can use other properties like foregroundImage, child, etc.
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Abubakar Asif",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w900),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),

            ],
          ),   SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://media.licdn.com/dms/image/D4D03AQGmSOJMy1gXFg/profile-displayphoto-shrink_800_800/0/1696849746979?e=2147483647&v=beta&t=7TU1PrqIXEh-qkFYlReGkrYwHZp5RW68VcyWFpqY1kw'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child:
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Set the border color
                          width: 3.0, // Set the border width
                        ),
                        shape: BoxShape.circle, // Ensure the container is a circle
                      ),
                      child: CircleAvatar(
                        radius: 20.0, // Set the radius of the circular avatar
                        backgroundColor: Colors.blue, // Set the background color
                        backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        // You can use other properties like foregroundImage, child, etc.
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Abubakar Asif",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w900),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://media.licdn.com/dms/image/D4D03AQGmSOJMy1gXFg/profile-displayphoto-shrink_800_800/0/1696849746979?e=2147483647&v=beta&t=7TU1PrqIXEh-qkFYlReGkrYwHZp5RW68VcyWFpqY1kw'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child:
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Set the border color
                          width: 3.0, // Set the border width
                        ),
                        shape: BoxShape.circle, // Ensure the container is a circle
                      ),
                      child: CircleAvatar(
                        radius: 20.0, // Set the radius of the circular avatar
                        backgroundColor: Colors.blue, // Set the background color
                        backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        // You can use other properties like foregroundImage, child, etc.
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Abubakar Asif",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w900),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),

            ],
          ),   SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://media.licdn.com/dms/image/D4D03AQGmSOJMy1gXFg/profile-displayphoto-shrink_800_800/0/1696849746979?e=2147483647&v=beta&t=7TU1PrqIXEh-qkFYlReGkrYwHZp5RW68VcyWFpqY1kw'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child:
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Set the border color
                          width: 3.0, // Set the border width
                        ),
                        shape: BoxShape.circle, // Ensure the container is a circle
                      ),
                      child: CircleAvatar(
                        radius: 20.0, // Set the radius of the circular avatar
                        backgroundColor: Colors.blue, // Set the background color
                        backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        // You can use other properties like foregroundImage, child, etc.
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Abubakar Asif",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w900),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container as the background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://media.licdn.com/dms/image/D4D03AQGmSOJMy1gXFg/profile-displayphoto-shrink_800_800/0/1696849746979?e=2147483647&v=beta&t=7TU1PrqIXEh-qkFYlReGkrYwHZp5RW68VcyWFpqY1kw'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: width*0.45,
                    height: height*0.3,

                    // You can customize the Container further
                  ),

                  // Circular Avatar on top
                  Positioned(
                    top: 5.0,
                    left: 5.0,
                    child:
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Set the border color
                          width: 3.0, // Set the border width
                        ),
                        shape: BoxShape.circle, // Ensure the container is a circle
                      ),
                      child: CircleAvatar(
                        radius: 20.0, // Set the radius of the circular avatar
                        backgroundColor: Colors.blue, // Set the background color
                        backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),

                        // You can use other properties like foregroundImage, child, etc.
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 10,
                    left: 10,
                    child:  Text("Abubakar Asif",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w900),),
                    // You can use other properties like backgroundColor, foregroundImage, etc.

                  ),
                ],
              ),

            ],
          ),
        ],
      ),);
  }
}
