import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui22nov_gridviewbuilder/model/cart_model.dart';
import '../component/grocery_item_tile.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CartPage();
              },
            ),
          );
        },
        child: Icon(Icons.shopping_bag),
      ),
      body: Column(
        children: [
          // ============ Good morning
          Text('Good Morning'),
          // ============ TExt Lets order
          Text(
            'Lets Order fresh item for you ',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          // ============ Divider garis lurus
          Divider(),
          // ============ Text Fresh items
          Text('Fresh Items'),
          // ============ Text Fresh items
          Expanded(child: Consumer<CartModel>(
            builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.shopItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                itemBuilder: (context, index) {
                  //dari sini langsung ke component grocery item tile
                  // tujuannya grocery item agar wajib memastikan peitem masuk
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                  );
                },
              );
            },
          )),
        ],
      ),
    );
  }
}
