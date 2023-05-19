import 'package:clora/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class doctors_specification extends StatefulWidget {
  final String name;
  const doctors_specification({super.key, required this.name});

  @override
  State<doctors_specification> createState() => _doctors_specificationState();
}

class _doctors_specificationState extends State<doctors_specification> {
  final List categories = [
    [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
      'Thomas Tyler',
      'MBBS, Bsc(Dentistry)',
      'Leicester, United Kingdom',
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_border_outlined,
        size: 18,
        color: Colors.yellow,
      ),
      '600+ reviews'
    ],
    [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
      'Thomas Tyler',
      'MBBS, Bsc(Pharmarcist)',
      'Leicester, United Kingdom',
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_border_outlined,
        size: 18,
        color: Colors.yellow,
      ),
      '600+ reviews'
    ],
    [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
      'Thomas Tyler',
      'MBBS, Bsc(Dentistry)',
      'Leicester, United Kingdom',
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_border_outlined,
        size: 18,
        color: Colors.yellow,
      ),
      '600+ reviews'
    ],
    [
      "https://media.istockphoto.com/id/1389440101/photo/shot-of-a-young-male-technician-analysing-samples-using-a-microscope.jpg?s=612x612&w=0&k=20&c=bfXsm2xfC9rfMk7xkW63xrp2uhyJcUqa3EpFCVHLxZk=",
      'Thomas Tyler',
      'MBBS, Bsc(Dentistry)',
      'Leicester, United Kingdom',
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 18,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star_border_outlined,
        size: 18,
        color: Colors.yellow,
      ),
      '600+ reviews'
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(routeManager.doctorCategories);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '${widget.name}s Near You',
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
            )
          ],
        ),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: categories.length,
          itemBuilder: ((context, index) {
            return  Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        color: Color.fromARGB(255, 198, 197, 197))
                  ]),
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              height: 190,
              width: 320,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage('${categories[index][0]}'),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${categories[index][1]}',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12)),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text('${categories[index][2]}',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 12))),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 13,
                              ),
                              Text('${categories[index][3]}',
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 70, 70, 70),
                                          fontSize: 12)))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              categories[index][4],
                              categories[index][5],
                              categories[index][6],
                              categories[index][7],
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.favorite_outline_sharp,
                        color: Color.fromARGB(255, 237, 236, 236),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('${categories[index][9]}',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 205, 204, 204),
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                          ))),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                          onPressed: (() {
                            Navigator.of(context)
                                .pushNamed(routeManager.doctorProfile);
                          }),
                          child: Text('View Profile'))
                    ],
                  )
                ],
              ),
            );
          })),
    );
  }
}
