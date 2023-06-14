import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:barcode_scanner/barcode_scanning_data.dart';
import 'package:qrscan/qrscan.dart' as BarcodeScanner;

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(title: "Scan", img: "assets/images/qr_scan.png");

  Items item4 = new Items(
    title: "Activity",
    img: "assets/images/festival.png",
  );
  Items item5 = new Items(
    title: "To do",
    img: "assets/images/todo.png",
  );
  Items item6 = new Items(
    title: "Settings",
    img: "assets/images/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item4, item5, item6];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              onTap: () {
                // Handle tap event
              },
              child: Container(
                // Container properties
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 151, 215, 237),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      data.img,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
//Container(
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Items({required this.title, required this.img});
}
