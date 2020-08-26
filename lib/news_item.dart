import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String imgUrl, title, desc, content, postUrl, name;

  NewsItem(this.imgUrl, this.title, this.desc, this.content, this.postUrl,
      this.name);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleView(postUrl)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 24.0),
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(6.0),
                  bottomLeft: Radius.circular(6))),
          child: Row(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  Text(desc,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 16.0),
                  Text(name,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.network(imgUrl,
                      height: 100, width: 100, fit: BoxFit.cover),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
