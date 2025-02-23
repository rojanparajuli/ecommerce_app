import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/view/home/offer_screen.dart';
import 'package:ecommerce/view/shop/product_detail_view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> items = [
    Image.asset('assets/slides/CJ _ 最も売れた商品圧倒的な可愛さ.jpeg', fit: BoxFit.fill),
    Image.asset('assets/slides/jpeg', fit: BoxFit.fill),
    Image.asset('assets/slides/jpeg(1)', fit: BoxFit.fill),
    Image.asset('assets/slides/jpeg(2)', fit: BoxFit.fill),
    Image.asset('assets/slides/LYL - 安全 で可愛い.jpeg', fit: BoxFit.fill),
    Image.asset('assets/slides/今年注目のニットアイテムから限定NEW COLOR！.jpeg',
        fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OfferScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.rectangle),
                  child: CarouselSlider(
                    items: items,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        initialPage: 2,
                        viewportFraction: 0.8),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sale',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Super autumn sale',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                        Text(
                          'view all',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailView(
                                      productDescription: 'Dorothy Perkins',
                                      productName: 'Evening dress',
                                      productPrice: 'Rs.1500',
                                      productImages: [
                                        'assets/products/hehe.jpeg'
                                      ],
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.rectangle),
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Image.asset('assets/products/hehe.jpeg',
                                        fit: BoxFit.fill),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(),
                                      ),
                                      child: Text(
                                        ' -20% ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -4,
                                      right: -4,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                              )
                                            ]),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dorothy Perkins'),
                                        Text(
                                          'Evening dress',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rs.2000',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Rs.1500',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailView(
                                      productDescription: 'Dorothy Perkins',
                                      productName: 'Evening dress',
                                      productPrice: 'Rs.1500',
                                      productImages: [
                                        'assets/products/jpeg(2)'
                                      ],
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.rectangle),
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Image.asset('assets/products/jpeg(2)',
                                        fit: BoxFit.fill),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(),
                                      ),
                                      child: Text(
                                        ' -20% ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -4,
                                      right: -4,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                              )
                                            ]),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dorothy Perkins'),
                                        Text(
                                          'Evening dress',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rs.2000',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Rs.1500',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailView(
                                      productDescription: 'Dorothy Perkins',
                                      productName: 'Evening dress',
                                      productPrice: 'Rs.1500',
                                      productImages: [
                                        'assets/products/Pink Satin Set Lace Nightie Nightgown Lingerie.jpeg'
                                      ],
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.rectangle),
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Image.asset(
                                        'assets/products/Pink Satin Set Lace Nightie Nightgown Lingerie.jpeg',
                                        fit: BoxFit.fill),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(),
                                      ),
                                      child: Text(
                                        ' -20% ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -4,
                                      right: -4,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                              )
                                            ]),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dorothy Perkins'),
                                        Text(
                                          'Evening dress',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rs.2000',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Rs.1500',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailView(
                                      productDescription: 'Dorothy Perkins',
                                      productName: 'Evening dress',
                                      productPrice: 'Rs.1500',
                                      productImages: [
                                        'assets/products/jpeg(3)'
                                      ],
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle),
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Image.asset('assets/products/jpeg(3)',
                                        fit: BoxFit.fill),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(),
                                      ),
                                      child: Text(
                                        ' -20% ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -4,
                                      right: -4,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                              )
                                            ]),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 15),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dorothy Perkins'),
                                        Text(
                                          'Evening dress',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rs.2000',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Rs.1500',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('You’ve never seen it before!',
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        Text('view all',
                            style: TextStyle(fontSize: 13, color: Colors.black))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 330,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                  shape: BoxShape.rectangle),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductDetailView(
                                                          productDescription:
                                                              'Dorothy Perkins',
                                                          productName: 'Dress',
                                                          productPrice:
                                                              'Rs.1500',
                                                          productImages: [
                                                            'assets/products/first.jpeg'
                                                          ],
                                                        )));
                                          },
                                          child: Image.asset(
                                              'assets/products/first.jpeg',
                                              fit: BoxFit.fill),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            ' New ',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -4,
                                          right: -4,
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5,
                                                  )
                                                ]),
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.yellow, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.yellow, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.yellow, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.yellow, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.yellow, size: 15),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Dorothy Perkins'),
                                            Text(
                                              ' dress',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Rs.2000',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Rs.1500',
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetailView(
                                            productDescription:
                                                'Dorothy Perkins',
                                            productName: 'Dress',
                                            productPrice: 'Rs.1500',
                                            productImages: [
                                              'assets/products/jpeg(1)'
                                            ],
                                          )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white),
                                    shape: BoxShape.rectangle),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Image.asset('assets/products/jpeg(1)',
                                              fit: BoxFit.fill),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              ' New ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: -4,
                                            right: -4,
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey,
                                                      blurRadius: 5,
                                                    )
                                                  ]),
                                              child: Icon(
                                                Icons.favorite_border,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(19.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Dorothy Perkins'),
                                              Text(
                                                ' dress',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Rs.2000',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Rs.1500',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetailView(
                                            productDescription:
                                                'Dorothy Perkins',
                                            productName: 'Dress',
                                            productPrice: 'Rs.1500',
                                            productImages: [
                                              'assets/products/jpeg'
                                            ],
                                          )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white),
                                    shape: BoxShape.rectangle),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Image.asset('assets/products/jpeg',
                                              fit: BoxFit.fill),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              ' New ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: -4,
                                            right: -4,
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey,
                                                      blurRadius: 5,
                                                    )
                                                  ]),
                                              child: Icon(
                                                Icons.favorite_border,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(19.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Dorothy Perkins'),
                                              Text(
                                                ' dress',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Rs.2000',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Rs.1500',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetailView(
                                            productDescription:
                                                'Dorothy Perkins',
                                            productName: 'Dress',
                                            productPrice: 'Rs.1500',
                                            productImages: [
                                              'assets/products/second.jpeg'
                                            ],
                                          )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white),
                                    shape: BoxShape.rectangle),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                              'assets/products/second.jpeg',
                                              fit: BoxFit.fill),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              ' New ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: -4,
                                            right: -4,
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey,
                                                      blurRadius: 5,
                                                    )
                                                  ]),
                                              child: Icon(
                                                Icons.favorite_border,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(19.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Dorothy Perkins'),
                                              Text(
                                                ' dress',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Rs.2000',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Rs.1500',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
