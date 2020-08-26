import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String imageUrl, categoryName;

  CategoryItem({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /*Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NewsByCategory(categoryName.toLowerCase())));*/
      },
      child: Container(
        margin: EdgeInsets.only(right: 14.0),
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: 60,
                  width: 120,
                  fit: BoxFit.cover,
                )),
            Container(
              alignment: Alignment.center,
              height: 60.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black26,
              ),
              child: Text(
                categoryName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
