import 'package:app1/View/Detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.zoom_out_map,
                          size: 18,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Store Location",
                        style: TextStyle(
                          color: Colors.grey[120],
                          fontSize: 14,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 19,
                          ),
                          Text(
                            "Mondolibug, Syhlet",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 260,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.white,
                  ),
                ],
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18,
                  ),
                  hintText: "Looking For Shoes",
                  hintStyle: TextStyle(
                    fontSize: 15,
                  ),
                  contentPadding: EdgeInsets.symmetric(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              height: 30,
                              width: 30,
                              'assets/nike.png',
                            ),
                          ),
                          const Text(
                            "Nike",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 224, 221, 221),
                      ),
                      child: Image.asset(
                        height: 35,
                        width: 35,
                        'assets/puma.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 224, 221, 221),
                      ),
                      child: Image.asset(
                        height: 35,
                        width: 35,
                        'assets/underArmour.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 224, 221, 221),
                      ),
                      child: Image.asset(
                        height: 35,
                        width: 35,
                        'assets/adidas.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 224, 221, 221),
                      ),
                      child: Image.asset(
                        height: 35,
                        width: 35,
                        'assets/converse.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircularContainer(
                    context, 'assets/8.png', 'Nike Air Max', '52.5'),
                _buildCircularContainer(
                    context, 'assets/9.png', 'Nike 234', '55.2'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircularContainer(
                    context, 'assets/6.png', 'Nike Air', '52.1'),
                _buildCircularContainer(
                    context, 'assets/7.png', 'Nike Jordan', '23.1'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularContainer(
      BuildContext context, String imagePath, String text, String price) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 223, 223, 223),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                imagePath,
                height: 95,
                fit: BoxFit.fill,
                width: 120,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            Row(
              children: [
                const Text(
                  '\$',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
                Text(
                  price,
                  style: GoogleFonts.sairaSemiCondensed(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
