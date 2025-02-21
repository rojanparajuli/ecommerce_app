import 'package:ecommerce/view/shop/filter_category_view.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Women's Tops", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _categoryChip('T-shirt'),
                  _categoryChip('Crop Top'),
                  _categoryChip('Sleeveless Top'),
                  _categoryChip('Blouse'),
                  _categoryChip('Tank Top'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterCategoryView()));
                    },
                    child: _filterOption(Icons.filter_alt_outlined, 'Filters')),
                GestureDetector(
                    onTap: () {
                      _sortByBottomModalSheet();
                    },
                    child: _filterOption(Icons.sort, 'Price Low to High')),
                IconButton(
                  icon: Icon(isGridView ? Icons.list : Icons.grid_view),
                  onPressed: () {
                    setState(() {
                      isGridView = !isGridView;
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: isGridView ? _buildGridView() : _buildListView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryChip(String label) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(fontSize: 14)),
    );
  }

  Widget _filterOption(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.black54),
        SizedBox(width: 5),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.black87)),
      ],
    );
  }

  Widget _buildListView() {
    return ListView(
      children: [
        _productTile(
            'Pull Over', 'Mango', 5.0, 23, 2000, 'assets/products/jpeg'),
        _productTile(
            'Blouse', 'Dorothy Perkins', 4.0, 20, 2500, 'assets/products/jpeg'),
      ],
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.favorite_border, color: Colors.black)),
            ),
          ],
        );
      },
    );
  }

  Widget _gridProductCard(int index) {
    List<Map<String, dynamic>> products = [
      {
        'name': 'Pull Over',
        'brand': 'Mango',
        'rating': 5.0,
        'reviews': 23,
        'price': 2000
      },
      {
        'name': 'Blouse',
        'brand': 'Dorothy Perkins',
        'rating': 4.0,
        'reviews': 20,
        'price': 2500
      },
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset('assets/products/jpeg',
                fit: BoxFit.cover, width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(products[index]['name'],
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(products[index]['brand'],
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                Row(
                  children: List.generate(
                      5,
                      (i) => Icon(Icons.star,
                          color: i < products[index]['rating']
                              ? Colors.yellow
                              : Colors.grey,
                          size: 18)),
                ),
                SizedBox(height: 5),
                Text('Rs. ${products[index]['price']}',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _productTile(String name, String brand, double rating, int reviews,
      int price, String imagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading:
            Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        title: Text(name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(brand, style: TextStyle(fontSize: 14, color: Colors.grey)),
            Row(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: index < rating ? Colors.yellow : Colors.grey,
                        size: 16,
                      )),
            ),
            Text('Rs. $price',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        trailing: Icon(Icons.favorite_border),
      ),
    );
  }

  void _sortByBottomModalSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        String selectedSort = "Popular";

        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Container(
                      height: 6,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'Sort By',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      _buildSortTile('Popular', selectedSort, setState),
                      _buildSortTile('Newest', selectedSort, setState),
                      _buildSortTile('Customer Review', selectedSort, setState),
                      _buildSortTile(
                          'Price: Low to High', selectedSort, setState),
                      _buildSortTile(
                          'Price: High to Low', selectedSort, setState),
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: 6,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    ).then((selectedSort) {
      if (selectedSort != null) {}
    });
  }

  Widget _buildSortTile(
      String title, String selectedSort, void Function(VoidCallback) setState) {
    bool isSelected = selectedSort == title;
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? Colors.black : Colors.black,
        ),
      ),
      tileColor: isSelected ? Colors.red : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onTap: () {
        setState(() {
          selectedSort = title;
        });
        Future.delayed(Duration(milliseconds: 300), () {
          // ignore: use_build_context_synchronously
          Navigator.pop(context, selectedSort);
        });
      },
    );
  }
}
