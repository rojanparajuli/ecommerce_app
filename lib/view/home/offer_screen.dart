import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/products/sale.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.black.withValues(alpha: 0.3),
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(20.0),
                    child: const Text(
                      'New Collection',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                _buildOfferTile(
                  imagePath: 'assets/products/sale2.jpeg',
                ),
                _buildOfferTile(
                  imagePath: 'assets/products/hoddie.jpg',
                  label: "Men's Hoodies",
                  textColor: Colors.white,
                ),
              ],
            ),
            _buildOfferTile(
              imagePath: 'assets/products/black.jpeg',
              label: 'Black Collection',
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOfferTile({
    String? imagePath,
    String? imageUrl,
    String? label,
    Color? textColor,
  }) {
    return Expanded(
      child: Container(
        height: 150,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          image: DecorationImage(
            image: imagePath != null
                ? AssetImage(imagePath) as ImageProvider
                : NetworkImage(imageUrl!),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            label ?? '',
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
