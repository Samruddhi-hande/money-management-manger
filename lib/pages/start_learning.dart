import 'package:expense/pages/Product.dart';
import 'package:flutter/material.dart';
class startlearnig extends StatefulWidget {
   const startlearnig({Key? key}) : super(key: key);

  @override
  State<startlearnig> createState() => _startlearnigState();
}
List<Product> products = [
  Product(
    id: 1,
    name: "Introduction to Investing",
    description: " Learn about different investment types (stocks, bonds, mutual funds), investment strategies, risk management, and how to build a diversified investment portfolio",
    price: 599.99,
    imageUrl: "assets/360_F_79305216_5virIfo0EFNZi93cqGFNuwuGuRjbYKUU.jpg",
  ),
  Product(
    id: 2,
    name: "Personal Finance for Beginners",
    description: "Gain practical skills to manage your personal finances effectively",
    price: 299.99,
    imageUrl: "assets/images.jpg",
  ),
  Product(
    id: 3,
    name: "Wealth Building Strategies",
    description: " Discover strategies to build and grow wealth over time. ",
    price: 0,
    imageUrl: "assets/images (1).jpg",
  ),
  Product(
    id: 4,
    name: "Understanding Credit and Debt",
    description: " Learn how credit works, how to establish and maintain good credit, strategies for managing debt (including student loans, credit cards, and mortgages), and steps to improve your financial health.",
    price: 99.99,
    imageUrl: "assets/images (2).jpg",
  ),
  Product(
    id: 5,
    name: "Financial Planning for Retirement",
    description: " Prepare for a secure retirement by learning about retirement savings vehicles (401(k), IRAs), estimating retirement needs, Social Security basics, withdrawal strategies, and creating a retirement income plan.",
    price: 12.99,
    imageUrl: "assets/images (3).jpg",
  ),
  Product(
    id: 6,
    name: "Investing in the Stock Market",
    description: "Dive deeper into stock market investing. Learn about fundamental and technical analysis, stock selection criteria, market trends, trading strategies, and how to evaluate investment opportunities.",
    price: 19.99,
    imageUrl: "assets/images (4).jpg",
  ),
  Product(
    id: 7,
    name: "Real Estate Investment Fundamentals",
    description: " Explore real estate investing strategies, including rental properties, flipping houses, REITs, and property management.",
    price: 129.99,
    imageUrl: "assets/images.png",
  ),
  // Add more products as needed
];
class _startlearnigState extends State<startlearnig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            Product product = products[index];
            return ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(0),

                 child: SizedBox(
                  width: 100, // Set desired width
                 height: 100,


                   child: Image.network(product.imageUrl,
                     fit: BoxFit.cover,),
                 )

              ),
              title: Text(product.name),
              subtitle: Text(product.description),
              trailing: Column(
                children: [
                  Text('\$${product.price.toStringAsFixed(2)}'),
                  // Text('\$${product.price.toStringAsFixed(2)}'),SizedBox.square()
                  ElevatedButton(onPressed: (

                      ){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => startlearnig(),
                    ),
                  );}, style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ), child: Text("BUY NOW"),)

                ],

              ),

              onTap: () {
                // Handle product selection (e.g., navigate to product details page)
              },
            );
          },
        )

    );
  }
}

