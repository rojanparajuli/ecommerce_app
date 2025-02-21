import 'package:ecommerce/view/shop/category_list_view.dart';
import 'package:ecommerce/widget/button/elevated.dart';
import 'package:flutter/material.dart';

class CategorySearchView extends StatelessWidget {
  const CategorySearchView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'Tops',
      'Shirts & Blouses',
      'Cardigans & Sweaters',
      'Knitwear',
      'Blazers',
      'Jackets',
      'Coats',
      'Dresses',
      'Pants',
      'Jeans',
      'Skirts',
      'Shorts',
      'Jumpsuits',
      'Swimwear',
      'Leggings'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: elevatedButtonWidget('View All Items', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryListView(),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Choose Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: Text(
                        categories[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryListView(),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
