import 'package:donate_the_difference/widgets.dart';
import 'package:flutter/material.dart';

class CharitiesPage extends StatefulWidget {
  @override
  _CharitiesPageState createState() => _CharitiesPageState();
}

class _CharitiesPageState extends State<CharitiesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        pageTitle(context, title: "Charities"),

        cardCharity(context,
            name: "Save The Children",
            imgPath: "assets/img/logo_stc.jpg",
            description: "Across the United States, one in five children grows up in poverty. Of the counties with the highest poverty rates, 90% are rural. Because of circumstances beyond their control, millions of kids never reach their full potential. Since 1932, Save the Children has been on the ground providing support to the most isolated and underserved children in rural America. From our earliest days in Appalachia – helping children and families hardest-hit by the Great Depression – to today, our U.S. team goes where others cannot."
        ),
        cardCharity(context,
            name: "Wounded Warrior Project",
            imgPath: "assets/img/logo_wwp.png",
            description: "Every warrior has a next mission. We know that the transition to civilian life is a journey. And for every warrior, family member, and caregiver, that journey looks different. We are here for their first step, and each step that follows. Because we believe that every warrior should have a positive future to look forward to. There’s always another goal to achieve, another mission to discover. We are their partner in that mission."
        ),
        cardCharity(context,
            name: "American Red Cross",
            imgPath: "assets/img/logo_arc.png",
            description: "Each day, thousands of people – people just like you – provide compassionate care to those in need. Our network of generous donors, volunteers and employees share a mission of preventing and relieving suffering, here at home and around the world. We roll up our sleeves and donate time, money and blood. We learn or teach life-saving skills so our communities can be better prepared when the need arises. We do this every day because the Red Cross is needed - every day."
        ),
        cardCharity(context,
            name: "SOME (So Others Might Eat)",
            imgPath: "assets/img/logo_some.png",
            description: "The cycle of poverty and homelessness can be broken. SOME’s (So Others Might Eat) comprehensive programs designed to help our most vulnerable neighbors—people experiencing homelessness and extreme poverty—find pathways out of poverty and achieve long-term stability and success. SOME is an interfaith, community-based service organization that exists to help and support residents of our nation’s capital experiencing homelessness and poverty. SOME offers a variety of services, including affordable housing, counseling, addiction treatment, and job training. In addition, SOME helps meet immediate daily needs by providing food, clothing, and healthcare to those in need."
        ),
        cardCharity(context,
            name: "Caring Bridge",
            imgPath: "assets/img/logo_cb.png",
            description: "In 2002, CaringBridge became a 501(c)(3) nonprofit organization incorporated in the USA, with all data hosted in the USA, providing support when it’s needed most. Our reach has grown: Since 1997, more than 740,000 CaringBridge websites have been created. One in thirteen people in the U.S. have used CaringBridge to rally support for a loved one during a health journey, and our reach extends to 235 countries and territories around the world."
        ),
      ],
    );
  }
}
