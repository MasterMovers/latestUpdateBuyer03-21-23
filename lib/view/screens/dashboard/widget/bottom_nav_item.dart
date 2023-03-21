import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData iconData;
  final Function onTap;
  final bool isSelected;
  final String textTitle;
  BottomNavItem(
      {@required this.iconData,
      this.onTap,
      this.isSelected = false,
      this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(iconData,
              color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
              size: 25),
          onPressed: onTap,
        ),
        Text(textTitle)
      ],
    ));
  }
}
