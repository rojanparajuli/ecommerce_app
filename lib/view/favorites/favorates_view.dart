import 'package:flutter/material.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  bool isGridView = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Favorites',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black, size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(isGridView ? Icons.list : Icons.grid_view, color: Colors.black, size: 30),
              onPressed: () {
                setState(() {
                  isGridView = !isGridView;
                });
              },
            ),
          ],
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Chips
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _categoryChip('All'),
                    _categoryChip('Clothing'),
                    _categoryChip('Shoes'),
                    _categoryChip('Accessories'),
                    _categoryChip('Bags'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              
              // Sort and Filter Options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _sortByBottomModalSheet,
                    child: _filterOption(Icons.sort, "Sort"),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: _filterOption(Icons.filter_list, "Filter"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              
              // Product List/Grid
              Expanded(
                child: isGridView ? _buildGridView() : _buildListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryChip(String label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: const TextStyle(fontSize: 14)),
    );
  }

  Widget _filterOption(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.black54),
        const SizedBox(width: 5),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.black87)),
      ],
    );
  }

  Widget _buildListView() {
    return ListView(
      children: [
        _productTile('Pull Over', 'Mango', 5.0, 23, 2000, 'assets/products/jpeg'),
        _productTile('Blouse', 'Dorothy Perkins', 4.0, 20, 2500, 'assets/products/jpeg'),
      ],
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            _gridProductCard(index),
            Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                padding: const EdgeInsets.all(5),
                child: const Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _gridProductCard(int index) {
    List<Map<String, dynamic>> products = [
      {'name': 'Pull Over', 'brand': 'Mango', 'rating': 5.0, 'reviews': 23, 'price': 2000},
      {'name': 'Blouse', 'brand': 'Dorothy Perkins', 'rating': 4.0, 'reviews': 20, 'price': 2500},
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset('assets/products/jpeg', fit: BoxFit.cover, width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(products[index]['name'], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(products[index]['brand'], style: const TextStyle(fontSize: 14, color: Colors.grey)),
                Row(
                  children: List.generate(5, (i) => Icon(Icons.star, color: i < products[index]['rating'] ? Colors.yellow : Colors.grey, size: 18)),
                ),
                const SizedBox(height: 5),
                Text('Rs. ${products[index]['price']}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _productTile(String name, String brand, double rating, int reviews, int price, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        title: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(brand, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            Row(
              children: List.generate(5, (index) => Icon(Icons.star, color: index < rating ? Colors.yellow : Colors.grey, size: 16)),
            ),
            Text('Rs. $price', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        trailing: const Icon(Icons.favorite, color: Colors.red),
      ),
    );
  }

  void _sortByBottomModalSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        String selectedSort = "Popular";

        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(child: Text('Sort By', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      _buildSortTile('Popular', selectedSort, setState),
                      _buildSortTile('Newest', selectedSort, setState),
                      _buildSortTile('Customer Review', selectedSort, setState),
                      _buildSortTile('Price: Low to High', selectedSort, setState),
                      _buildSortTile('Price: High to Low', selectedSort, setState),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSortTile(String title, String selectedSort, void Function(VoidCallback) setState) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: selectedSort == title ? FontWeight.bold : FontWeight.normal)),
      onTap: () {
        setState(() => selectedSort = title);
        Navigator.pop(context, selectedSort);
      },
    );
  }
}
