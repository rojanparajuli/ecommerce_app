import 'package:ecommerce/view/shop/brand_view.dart';
import 'package:flutter/material.dart';

class FilterCategoryView extends StatefulWidget {
  const FilterCategoryView({super.key});

  @override
  State<FilterCategoryView> createState() => _FilterCategoryViewState();
}

class _FilterCategoryViewState extends State<FilterCategoryView> {
  RangeValues _priceRange = const RangeValues(100, 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Filters',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Price Range',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Rs.${_priceRange.start.toInt()}',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('Rs.${_priceRange.end.toInt()}',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        RangeSlider(
                          activeColor: Colors.red,
                          values: _priceRange,
                          min: 100,
                          max: 10000,
                          divisions: 20,
                          labels: RangeLabels(
                            _priceRange.start.toInt().toString(),
                            _priceRange.end.toInt().toString(),
                          ),
                          onChanged: (values) {
                            setState(() => _priceRange = values);
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildColorSection(),
                  const SizedBox(height: 16),
                  _buildSection('Sizes', ['S', 'M', 'L', 'XL', 'XXL']),
                  const SizedBox(height: 16),
                  _buildSection(
                      'Categories', ['All', 'Women', 'Men', 'Girl', 'Boy']),
                  const SizedBox(height: 16),
                  _buildSection('Items', [
                    'T-Shirts',
                    'Shirts',
                    'Jeans',
                    'Trousers',
                    'Shorts',
                    'Jackets',
                    'Sweaters',
                    'Hoodies',
                    'Suits',
                    'Blazers',
                    'Coats',
                    'Dresses',
                    'Skirts',
                    'Tops',
                    'Socks',
                    'Underwear',
                    'Swimwear',
                    'Sportswear'
                        'Shoes',
                    'underwear',
                    'Accessories',
                    'Bags',
                    'Jewelry',
                    'Watches',
                    'Hats',
                    'Belts',
                    'Sunglasses',
                    'Scarves',
                    'Gloves',
                    'Ties',
                    'Wallets',
                    'Backpacks',
                    'Suitcases',
                    'Umbrellas',
                    'Luggage'
                  ]),
                  Divider(),
                  const SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BrandView()));
                    },
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Brands',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('addidas orignals, jack & jones, s.oliver....')
                      ],
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          ),
          _acceptDiscart(),
        ],
      ),
    );
  }

  Widget _buildColorSection() {
    List<Color> colors = [
      Colors.black,
      Colors.white,
      Colors.red,
      Colors.blue,
      Colors.pink,
      Colors.brown,
      Colors.amber
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Colors',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: colors
              .map((color) => Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                      border: color == Colors.white
                          ? Border.all(color: Colors.grey, width: 1)
                          : null,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildSection(String title, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: options
              .map((option) => FilterChip(
                    label: Text(option),
                    selected: option == 'Red',
                    selectedColor: Colors.red,
                    onSelected: (bool value) {},
                  ))
              .toList(),
        ),
      ],
    );
  }

  _acceptDiscart() {
    return Positioned(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.black),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: Text('Discart'),
                  ),
                ),
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: Text('Apply'),
                  ),
                ),
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
      ),
    );
  }
}
