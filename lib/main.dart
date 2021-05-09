import 'package:cocteles/coctel.dart';
import 'package:cocteles/drinkDetail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(
      title: "Cocktail App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var url = "https://www.thecocktaildb.com/api/json/v2/9973533/popular.php";

  CoctelModel coctelModel;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    coctelModel = CoctelModel.fromJson(decodedJson);
    print(coctelModel.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cocktail"),
        backgroundColor: const Color(0xff900C3F),
      ),
      body: coctelModel == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (9 / 15),
              children: coctelModel.drinks
                  .map((drink) => Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: Card(
                            color: Colors.red[30],
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                ListTile(
                                  tileColor: const Color(0xff900C3F),
                                  title: Text(
                                    drink.strDrink,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    drink.strCategory,
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6)),
                                  ),
                                ),
                                Image.network(drink.strDrinkThumb),
                                FlatButton(
                                  textColor: const Color(0xff900C3F),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DrinkDetail(
                                                  drink: drink,
                                                )));
                                  },
                                  child: const Text('See more'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          coctelModel = null;
          setState(() {});
          fetchData();
        },
        backgroundColor: const Color(0xff900C3F),
        child: Icon(Icons.refresh),
      ),
    );
  }
}
