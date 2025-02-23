import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailView extends StatefulWidget {
  final String productName;
  final String productDescription;
  final List<String> productImages;
  final String productPrice;

  const ProductDetailView({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productImages,
    required this.productPrice,
  });

  @override
  ProductDetailViewState createState() => ProductDetailViewState();
}

class ProductDetailViewState extends State<ProductDetailView> {
  final List<String> sizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL'];
  final List<Color> colors = [
    Colors.black,
    Colors.white,
    const Color.fromARGB(255, 228, 223, 180)
  ];
  bool showImage = false;
  String selectedSize = "M";
  Color selectedColor = Colors.black;
  bool isFavorite = false;
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
        ],
        title: Text(
          widget.productName,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: widget.productImages.map((image) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 300,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      side: WidgetStateProperty.all(
                          BorderSide(color: Colors.black, width: 1)),
                    ),
                    onPressed: () => _showSizeSelector(context),
                    icon: const Icon(Icons.format_size),
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Size: $selectedSize",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_drop_down, color: Colors.black),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      side: WidgetStateProperty.all(
                          BorderSide(color: Colors.black, width: 1)),
                    ),
                    onPressed: () => _showColorSelector(context),
                    icon: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedColor,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                    ),
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Black",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_drop_down, color: Colors.black),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                widget.productName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                widget.productPrice,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Text(widget.productDescription),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: List.generate(5, (index) {
                      return const Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.amber,
                      );
                    }),
                  ),
                  Text('(10)')
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rating & Reviews',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '4.3',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text(
                            '23 ratings',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: List.generate(6, (index) {
                          int stars = 5 - index;
                          return Row(
                            children: [
                              Row(
                                children: List.generate(
                                  stars,
                                  (i) => Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                  height: 10,
                                  width: (12 - (2 * index)) * 10,
                                  color: Colors.red),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Reviews',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: showImage,
                              onChanged: (value) {
                                setState(() {
                                  showImage = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              activeColor: Colors.blue,
                            ),
                            Text(
                              'With Image',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[300], thickness: 1.2),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/pp.jpg'),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helene Moore',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Icon(Icons.star,
                                          size: 18, color: Colors.amber),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'June 5, 2019',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                "The dress is great! Very classy and comfortable. It fits perfectly! "
                                "I'm 5'7'' and 130 pounds. I am a 34B chest. This dress would be too long "
                                "for those who are shorter but could be hemmed. I wouldn't recommend it for "
                                "those big chested as I am smaller chested and it fit me perfectly.",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black87),
                              ),
                              SizedBox(height: 12),
                              if (showImage)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/products/hehe.jpeg',
                                    height: 150,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Icon(Icons.thumb_up,
                                      color: Colors.grey, size: 18),
                                  SizedBox(width: 4),
                                  Text(
                                    'Helpful',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _writeReviewBottomSheet(context);
        },
        backgroundColor: Colors.red,
        icon: Icon(Icons.brush_outlined, color: Colors.white),
        label: Text(
          'Write a review',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _showSizeSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select Size",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                children: sizes.map((size) {
                  return ChoiceChip(
                    label: Text(size, style: const TextStyle(fontSize: 16)),
                    selected: false,
                    onSelected: (bool selected) {},
                    selectedColor: Colors.red.shade200,
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  void _showColorSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select Color",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                children: colors.map((color) {
                  return GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: color,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: color == Colors.white
                              ? Border.all(color: Colors.white, width: 2)
                              : null,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

void _writeReviewBottomSheet(BuildContext context) {
  TextEditingController reviewController = TextEditingController();

  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    isScrollControlled: true,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          top: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Center(
              child: Container(
                height: 6,
                width: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 140, 137, 137),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text(
                'What is your rate ?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (newRating) {},
              ),
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
              'Please share your Opinion about the product',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: reviewController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Write your review...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Text('Add Your Photo', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'Send Review',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
               SizedBox(height: 10),
            Center(
              child: Container(
                height: 6,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 99, 98, 98),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}

// class RatingReviews extends StatelessWidget {
//   const RatingReviews({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Rating & Reviews',
//           style: TextStyle(
//               color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   '4.3',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//                 ),
//                 Text(
//                   '23 ratings',
//                   style: TextStyle(fontSize: 16, color: Colors.grey),
//                 ),
//               ],
//             ),
//             SizedBox(width: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: List.generate(6, (index) {
//                 int stars = 5 - index;
//                 return Row(
//                   children: [
//                     Row(
//                       children: List.generate(
//                         stars,
//                         (i) => Icon(Icons.star, color: Colors.amber, size: 20),
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Container(
//                       height: 10,
//                       width: (12 - (2 * index)) * 10, // Creates a decreasing bar
//                       color: Colors.grey[400],
//                     ),
//                   ],
//                 );
//               }),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
