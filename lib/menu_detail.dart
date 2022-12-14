import 'package:flutter/material.dart';
import 'menu.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                widget.recipe.imageUrl,
                width: 700,
                height: 500,
                fit: BoxFit.fitWidth,
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800, decoration: TextDecoration.underline),
            ),
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  // TODO: Add ingredient.quantity
                  return Text('${ingredient.name}', 
                  textAlign: TextAlign.center,
                  style: 
                  const TextStyle(fontSize:20),
                  );
                },
              ),
            ),

            // TODO: Add Slider() here
          ],
        ),
      ),
    );
  }
}
