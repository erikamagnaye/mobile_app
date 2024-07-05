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
        Row(
          children: [
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
           IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: ( ) {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetailsScreen()),
                  );
            },
            iconSize: 30,
            icon: const Icon(Icons.local_shipping_outlined),  //icon na truck sa homepage
          ),
      ],
        ),
      ],
    );
 
    
  }
}


class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                    "images/all/sweet.png",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Order Status: For Pickup",
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Pickup Date: 2023-03-15",
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10), // Add some space between the images
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        "images/all/wireless.png",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "seller is packing your order",
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Pickup Date: 2023-03-15",
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                ),
                     
              ],
            ),
                        Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                    "images/all/miband.jpg",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Order Status: Cancelled",
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Pickup Date: 2023-03-15",
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10), // Add some space between the images
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        "images/all/jacket.png",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Order Status: Claimed",
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Claimed Date: 2023-03-15",
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                ),
                     
              ],
            ),
          ],
        ),
      ),
    );
  }
}