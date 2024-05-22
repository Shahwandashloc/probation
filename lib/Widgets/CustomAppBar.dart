import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData notificationIcon;
  final IconData messageIcon;
  final IconData plusIcon;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.notificationIcon,
    required this.messageIcon,
    required this.plusIcon,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: backgroundColor,
      leading: Stack(
        children: [
          IconButton(
            icon: Icon(notificationIcon),
            color: Colors.lightBlue,
            onPressed: () {},
          ),
          Positioned(
            top: 13,
            right: 22,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(messageIcon),
          color: Colors.lightBlue,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(plusIcon),
          color: Colors.lightBlue,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
