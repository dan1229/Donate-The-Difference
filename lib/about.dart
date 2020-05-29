import 'package:donate_the_difference/widgets.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        pageTitle(context, title: "About"),

        Card(
//          elevation: 8.0,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Message From Our CEO,\n",
                  style: Theme.of(context).textTheme.title.copyWith(
                    fontFamily: 'Arvo',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),

                Text(
                  "Here at Donate the Difference, our view is to make charitable contributions easy and convenient. At DTD we round up your purchases to the nearest dollar and donate the amount to the charity of your choice." +
                  "The average person has about 5 transactions a day. The average round up of these transactions is about \$.50. That’s a total of \$912.50 a year! Sum that over all our users and we are making quite the difference." +
                  "Help make charitable contributions easy and convenient by signing up today. You can change lives!",
                  style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.white,
                  ),
                ),

                Text(
                  "\nDr. Scott Pledger",
                  style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Chief Executive Officer",
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        
        Card(
          elevation: 8.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Our Team:",
                  style: Theme.of(context).textTheme.title.copyWith(
                    fontFamily: 'Arvo',
                  ),
                ),

                tileTeam("Scott Pledger", "Chief Executive Officer"),
                tileTeam("Daniel Nazarian", "Chief Technology Officer"),
                tileTeam("Robert Fanning", "Chief Financial Officer"),
                tileTeam("Zachary Starr", "Chief Product Officer"),
                tileTeam("Brandon Morris", "Chief Information Officer"),

                Image.asset("assets/img/hackathon_team.jpg"),
              ],
            ),
          ),
        ),
      ],
    );
  }
  
  Widget tileTeam(String name, String position) {
    return ListTile(
      title: Text(
        name,
        style: Theme.of(context).textTheme.title,
      ),
      subtitle: Text(
        position,
        style: Theme.of(context).textTheme.subtitle,
      ),
    );
  }
}
