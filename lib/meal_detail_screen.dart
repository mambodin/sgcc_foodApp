import 'package:flutter/material.dart';
import 'dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  Widget buildSectionTile(BuildContext context, String text) {
    return Container(
      child: Text(text, style: Theme.of(context).textTheme.headline2),
      margin: EdgeInsets.all(5),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedMeal.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTile(context, "Ingredients"),
              Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(10),
                  child: ListView.builder(
                    itemBuilder: (ctx, index) => Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(
                          selectedMeal.ingredients[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      color: Theme.of(context).accentColor,
                    ),
                    itemCount: selectedMeal.ingredients.length,
                  )),
              buildSectionTile(context, 'Steps'),
              Container(
                height: 150,
                width: 300,
                child: ListView.builder(
                    itemBuilder: (ctx, index) => Column(children: [
                          ListTile(
                            leading: CircleAvatar(child: Text('#${index + 1}')),
                            title: Text(selectedMeal.steps[index]),
                          ),
                        ]),
                    itemCount: selectedMeal.steps.length),
              ),
            ],
          ),
        ));
  }
}
