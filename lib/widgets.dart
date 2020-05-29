import 'package:flutter/material.dart';

Widget pageTitle(BuildContext context, {@required String title}) {
  return Column(
    children: <Widget>[
      Card(
        color: Theme.of(context).primaryColor,
//        elevation: 16.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/img/logo.png",
                fit: BoxFit.fitHeight,
                height: 30.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.display1.copyWith(
                      color: Colors.white,
                      fontFamily: 'Arvo',
                    ),
                  ),

                  Icon(
                    Icons.attach_money,
                    color: Theme.of(context).accentColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      Container(
        height: 12.0,
      ),
    ],
  );
}




Widget cardCharity(BuildContext context, {
  @required String name,
  @required String imgPath,
  @required String description,
}) {
  return Card(
    elevation: 8.0,
    child: Row(
      children: <Widget>[
        Image.asset(
          imgPath,
          fit: BoxFit.cover,
          width: 128,
        ),

        Flexible(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Flexible(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ),
                  )
                ),
              ],
            )
          ),
        )
      ],
    ),
  );
}