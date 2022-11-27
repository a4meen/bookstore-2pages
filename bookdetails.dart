import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class bookdetails extends StatelessWidget {
  // const bookdetails({Key? key}) : super(key: key);

  final book;
  const bookdetails({key, required this.book});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xFF06070D),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Color(0xFF000000),
            ),
            Padding(padding: EdgeInsets.only(right: 34, top: 55)),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 103.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                '${book['image']}',
                width: 216,
                height: 320,
              ),
              const SizedBox(height: 22),
              Text(
                '${book['bookname']}',
                style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFF06070D),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 12),
              Text(
                '${book['auther']}',
                style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFF06070D).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    itemSize: 14.0,
                    onRatingUpdate: (rating) {},
                    initialRating: double.parse('${book['rate']}'),
                    ignoreGestures: true,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 14.0,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${book['rate']}',
                    style: const TextStyle(color: Color(0xFF06070D)),
                  ),
                  const Text(
                    '/5.0',
                    style: TextStyle(color: Color(0xFF828285)),
                  )
                ],
              ),
              const SizedBox(height: 19),
              SizedBox(
                width: 319,
                height: 70,
                child: Text(
                  'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',
                  style: TextStyle(
                    color: const Color(0xFF06070D).withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: const Color(0xFFFFFFFF),
                    height: 40,
                    width: 154,
                    child: OutlinedButton(
                      onPressed: (() {}),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(image: AssetImage('assets/images/Vector.png')),
                          SizedBox(width: 15),
                          Text(
                            'Preview',
                            style: TextStyle(color: Color(0xFF06070D)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xFFFFFFFF),
                    height: 40,
                    width: 154,
                    child: OutlinedButton(
                      onPressed: (() {}),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                              image: AssetImage('assets/images/Vector(2).png')),
                          SizedBox(width: 14),
                          Text(
                            'Reviews',
                            style: TextStyle(color: Color(0xFF06070D)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 319,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFF06070D),
                ),
                child: OutlinedButton(
                    onPressed: (() {}),
                    child: Text("Buy Now for ${book['price']}")),
              ),
            ],
          ),
        ));
  }
}
