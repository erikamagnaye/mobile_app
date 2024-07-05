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
        CircleAvatar(
          backgroundColor: kcontentColor,
          radius: 28,
          backgroundImage: AssetImage('images/maloi.jpg'),
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
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: const Center(
                      child: Text(
                        '6',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigate to OrderDetailsScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Scaffold(
                                  backgroundColor: kcontentColor,
                                  appBar: AppBar(
                                    title: Text(
                                      "Order Details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    centerTitle: true,
                                  ),
                                  body: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: ListView(
                                      children: [
                                        buildOrderItem(
                                          "images/all/sweet.png",
                                          "Uniform Blouse",
                                          "Order Status: For Pickup",
                                          "Pickup Date: 2023-03-15",
                                        ),
                                        buildOrderItem(
                                          "images/all/wireless.png",
                                          "ID Lace",
                                          "Order Status: To Pack",
                                          "Pickup Date: 2023-03-15",
                                        ),
                                        buildOrderItem(
                                          "images/all/miband.jpg",
                                          "PE Shirt",
                                          "Order Status: Cancelled",
                                          "Pickup Date: 2023-03-15",
                                        ),
                                        buildOrderItem(
                                          "images/all/jacket.png",
                                          "PE Pants",
                                          "Order Status: Claimed",
                                          "Claimed Date: 2023-03-15",
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                      );
                    },
                    iconSize: 30,
                    icon: const Icon(Icons.local_shipping_outlined),
                    style: IconButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      backgroundColor: kcontentColor,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildOrderItem(
      String imagePath, String productName, String status, String date) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          width: 60,
          height: 60,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          productName,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        subtitle: RichText(
          text: TextSpan(
            text: 'Order Status: ',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            children: <TextSpan>[
              TextSpan(
                text: status.substring('Order Status: '.length),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: '\n$date',
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
