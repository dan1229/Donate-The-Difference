import 'package:donate_the_difference/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        pageTitle(context, title: "Home"),

        Card(
          child: Column(
            children: <Widget>[
              Text(
                "Donations Over Time",
                style: Theme.of(context).textTheme.display1.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontFamily: 'Arvo',
                ),
              ),
              Image.asset("assets/img/graph.png"),
            ],
          ),
        ),

        Card(
          elevation: 8.0,
          child: Column(
            children: <Widget>[

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 4.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Total Donated",
                          style: Theme.of(context).textTheme.display1.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontFamily: 'Arvo',
                          ),
                        ),
                        Text(
                          "\$105.87",
                          style: Theme.of(context).textTheme.title.copyWith(
                              color: Theme.of(context).primaryColor
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ),

              tileTransaction("0.57", "1/2/19", "Save The Children"),
              tileTransaction("0.34", "1/3/19", "Wounded Warrior Project"),
              tileTransaction("0.93", "1/3/19", "So Others Might Eat (SOME)"),
              tileTransaction("0.12", "1/4/19", "American Red Cross"),
              tileTransaction("0.46", "1/6/19", "Caring Bridge"),

              ListTile(
                leading: FlatButton(
                  color: Theme.of(context).primaryColor,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Text(
                      "Show More",
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget tileTransaction(String amount, String date, String charity) {
    return ListTile(
      title: Text("\$$amount"),
      subtitle: Text(charity),
      leading: Text(date),
    );
  }
}
