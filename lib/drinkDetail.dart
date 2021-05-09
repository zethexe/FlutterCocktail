import 'package:cocteles/coctel.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final Drinks drink;
  DrinkDetail({this.drink});
  @override
  Widget build(BuildContext context) {
    final img = Container(
        child: Image(
      image: NetworkImage(drink.strDrinkThumb),
    ));

    print(drink.strMeasure5);
    final cont = Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                          color: const Color(0xff900C3F), fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      drink.strCategory,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 60),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Serve",
                      style: TextStyle(
                          color: const Color(0xff900C3F), fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      drink.strGlass,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Ingredients and measures",
              style: TextStyle(color: const Color(0xff900C3F), fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            drink.strIngredient1 != null
                ? Text(
                    "-" + drink.strIngredient1 + " : " + drink.strMeasure1,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient2 != null
                ? Text(
                    "-" + drink.strIngredient2 + " : " + drink.strMeasure2,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient3 != null
                ? Text(
                    "-" + drink.strIngredient3 + " : " + drink.strMeasure3,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient4 != null
                ? Text(
                    "-" + drink.strIngredient4 + " : " + drink.strMeasure4,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient5 != null
                ? Text(
                    "-" + drink.strIngredient5 + " : " + drink.strMeasure5,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient6 != null
                ? Text(
                    "-" + drink.strIngredient6 + " : " + drink.strMeasure6,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient7 != null
                ? Text(
                    "-" + drink.strIngredient7 + " : " + drink.strMeasure7,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient8 != null
                ? Text(
                    "-" + drink.strIngredient8 + " : " + drink.strMeasure8,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient9 != null
                ? Text(
                    "-" + drink.strIngredient9 + " : " + drink.strMeasure9,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient10 != null
                ? Text(
                    "-" + drink.strIngredient10 + " : " + drink.strMeasure10,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient11 != null
                ? Text(
                    "-" + drink.strIngredient11 + " : " + drink.strMeasure11,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient12 != null
                ? Text(
                    "-" + drink.strIngredient12 + " : " + drink.strMeasure12,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient13 != null
                ? Text(
                    "-" + drink.strIngredient13 + " : " + drink.strMeasure13,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient14 != null
                ? Text(
                    "-" + drink.strIngredient14 + " : " + drink.strMeasure14,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            drink.strIngredient15 != null
                ? Text(
                    "-" + drink.strIngredient15 + " : " + drink.strMeasure15,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  )
                : SizedBox(
                    height: 0.0,
                  ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Instructions",
              style: TextStyle(color: const Color(0xff900C3F), fontSize: 20.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              drink.strInstructions,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(drink.strDrink),
        backgroundColor: const Color(0xff900C3F),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[img, cont],
        ),
      ),
    );
  }
}
