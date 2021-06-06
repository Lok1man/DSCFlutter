import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsItemTechno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.grey.shade300, width: 1.0),
      ),
      child: Row(
        children: [
          Container(
            width: 90.0,
            height: 135.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: NetworkImage(
                    'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/chapter_banners/batas2rev.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ini Judul',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Ringkasan',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '24 April 2021',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
