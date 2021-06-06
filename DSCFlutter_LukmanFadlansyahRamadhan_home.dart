import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_app/page/news_item_techno.dart';
import 'package:new_flutter_app/page/news_item_trend.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String apiUrlTrend = 'https://innocent-dscitb.vercel.app/trend.json';
  String apiUrlTechno = 'https://innocent-dscitb.vercel.app/news.json';

  var dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTrendNews();
  }

  void getTrendNews() async {
    final response = await dio.get(apiUrlTrend);
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "MNC News App",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                "Trending News",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 21.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: NewsItemTrend(),
                ),
                // onTap: () =>_launchInWebViewOrVC(item.url),
              );
            },
          ),
          SizedBox(height: 15.0),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Techno News",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 21.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  width: double.infinity,
                  height: 135.0,
                  margin:
                      EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                  child: NewsItemTechno(),
                ),
                // onTap: () =>_launchInWebViewOrVC(item.url),
              );
            },
          ),
        ],
      ),
    );
  }
}

Dio() {}
