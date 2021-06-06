import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsItemTrend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: 300.0,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
              image: NetworkImage(
                  'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/chapter_banners/batas2rev.png'),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
        Positioned(
            bottom: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ini Judul',
                      maxLines: 2,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '24 April 2021',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
