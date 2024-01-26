import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(top: 50, right: 10, left: 10),
        children: <Widget>[
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _buildAvatarWithBadge(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbwoPTEjmkJnFmVJZX8EMl18VqoZoKoC-VNiBdKsFUraKRekV1oZyjPcGTsejSs86FmHI&usqp=CAU',
                        "Abubakar Asif",
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 40,
                      )
                    ],
                  ),
                  Icon(
                    Icons.settings_rounded,
                    size: 30,
                  )
                ],
              ),
              SizedBox(height: 10),
              _buildChatDrawerItem("Chats", Icons.chat, badgeCount: 1),    SizedBox(height: 10),
              _buildDrawerItem("Marketplace", Icons.shopping_bag),    SizedBox(height: 10),
              _buildDrawerItem("Message requests", Icons.chat_bubble_rounded),    SizedBox(height: 10),
              _buildDrawerItem("Archive", Icons.unarchive),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Communities",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontFamily: 'Raleway',
                      fontSize: width * 0.04,
                    ),
                  ),
                  Text(
                    "EDIT",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Raleway',
                      fontSize: width * 0.04,
                    ),
                  ),
                ],
              ),
            ],
          ),
          _buildCommunityItem(
            "ICC-International Cricket Council",
            'https://yt3.googleusercontent.com/3K6h6gpMPf4mK9qh6SXTl0W3PLxnOMzUnFHc2lbS9t-ucS-b4JGcR8nW7ja9XDYkHM-kAnijk2c=s900-c-k-c0x00ffffff-no-rj',
            '5M active',
          ),  _buildCommunityItem(
            "ICC-International Cricket Council",
            'https://yt3.googleusercontent.com/3K6h6gpMPf4mK9qh6SXTl0W3PLxnOMzUnFHc2lbS9t-ucS-b4JGcR8nW7ja9XDYkHM-kAnijk2c=s900-c-k-c0x00ffffff-no-rj',
            '5M active',
          ),
          _buildCommunityItem(
            "ACC-Asian Cricket Council",
            'https://vectorseek.com/wp-content/uploads/2023/06/Asia-Cup-2023-Logo-Vector.jpg',
            '2M active',
          ),  _buildCommunityItem(
            "ACC-Asian Cricket Council",
            'https://vectorseek.com/wp-content/uploads/2023/06/Asia-Cup-2023-Logo-Vector.jpg',
            '2M active',
          ),
        ],
      ),
    );
  }

  Widget _buildAvatarWithBadge(String imageUrl, String label) {
    return Row(
      children: [
        badges.Badge(
          badgeStyle: badges.BadgeStyle(
            elevation: 50,
            badgeColor: Colors.red,
          ),
          badgeContent: Text(
            "1",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          position: badges.BadgePosition.topStart(top: -10, start: 30),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        SizedBox(width: 15),
        Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildDrawerItem(String title, IconData iconData, {int? badgeCount}) {

    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                  icon: Icon(
                    iconData,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          if (badgeCount != null)
            CircleAvatar(
              radius: 10,
              child: Text(badgeCount.toString()),
            ),
        ],
      ),
    );
  }
  Widget _buildChatDrawerItem(String title, IconData iconData, {int? badgeCount}) {

    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                  icon: Icon(
                    iconData,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          if (badgeCount != null)
            CircleAvatar(
              radius: 10,
              child: Text(badgeCount.toString()),
            ),
        ],
      ),
    );
  }
  Widget _buildCommunityItem(String title, String imageUrl, String subtitle) {
    return ListTile(
      minVerticalPadding: 2,
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        // Add your onTap logic here
      },
    );
  }
}
