import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/dummy_data.dart';
import 'package:shopping_list_app/widget/new_item.dart';

class GrocertList extends StatefulWidget {
  const GrocertList({super.key});

  @override
  State<GrocertList> createState() => _GrocertListState();
}

class _GrocertListState extends State<GrocertList> {
  // Route to the NewItem Screen
  void _addItem() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => NewItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Groceries"),
        actions: [IconButton(onPressed: _addItem, icon: const Icon(Icons.add))],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder:
            (ctx, index) => ListTile(
              title: Text(groceryItems[index].name),
              leading: Container(
                width: 24,
                height: 24,
                color: groceryItems[index].category.color,
              ),
              trailing: Text(groceryItems[index].quantity.toString()),
            ),
      ),
    );
  }
}
