import 'package:flutter/material.dart';
import '../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(15),
          ),
          onPressed: () {},
          iconSize: 28,
          icon: const Icon(Icons.grid_view_outlined),
        ),
        Stack(
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: kcontentColor,
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.notifications_outlined),
            ),
            Positioned(
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
                child: Text(
                  '6',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
