<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Widgets for convenient to make app.

Create some widgets for easily to make app.

## Features

Have a lot custom Widgets for make app.

## Getting started

Use these Widgets to make app.  
- [TextTitle()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/text/text_title.dart#L3)  
- [TextBody()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/text/text_body.dart#L3)  
- [AppBarWidget()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/appbar/app_bar_widget.dart#L4)  
- [CategoryHorizontalWidget()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/category_widget/category_horizontal_widget.dart#L3)  
- [CategoryVerticalWidget()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/category_widget/category_vertical_widget.dart#L3)  
- [CardSmallImageOneTitleWidget()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/cards/card_small_image_one_title_widget.dart#L3)  
- [CardMediumImageTwoTitleOneButtonWidget()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/cards/card_medium_image_two_title_one_button_widget.dart#L3)  
- [ListImageTwoTitleOneButtonWidget()](https://github.com/kritbovorn/flutter_tyre/blob/67ba6eed289e809c9ea2a3192689b5f350ed5386/lib/widgets/lists/list_image_two_title_one_button_widget.dart#L3)  


## Usage

```dart
    
import 'package:flutter/material.dart';
import 'package:flutter_example/models/category_model.dart';
import 'package:flutter_example/models/diet_model.dart';
import 'package:flutter_example/models/popular_model.dart';
import 'package:flutter_tyre/flutter_tyre.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popularDiets = [];

  @override
  void initState() {
    super.initState();
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Boy',
        action: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send),
        ),
      ),
      body: ListView(
        children: [
          const TextTitle(
            title: 'Text Title',
          ),
          const TextBody(
            title: 'Text Body',
          ),
          CategoryHorizontalWidget(
            title: "Hello",
            itemHeight: 240,
            datas: diets,
            childBuilder: (data) => CardMediumImageTwoTitleOneButtonWidget(
              backgroundColor: data.boxColor.withOpacity(0.4),
              image: const Icon(Icons.woman),
              title: data.name,
              subTitle: data.calorie,
              onTapped: () {
                print(data.name);
              },
            ),
          ),
          const SizedBox(height: 40),
          CategoryHorizontalWidget(
            itemHeight: 120,
            title: "Somethings",
            datas: categories,
            childBuilder: (data) => CardSmallImageOneTitleWidget(
              backgroundColor: data.boxColor.withOpacity(0.7),
              image: const Icon(Icons.person),
              title: data.name,
              onTapped: () {
                print(data.name);
              },
            ),
          ),
          const SizedBox(height: 40),
          CategoryVerticalWidget(
            title: "Vertical",
            datas: popularDiets,
            childBuilder: (data) => ListImageTwoTitleOneButtonWidget(
              title: 'Lists',
              image: const Icon(Icons.outlined_flag_rounded),
              subTitle: data.name,
              nextButton: const Icon(Icons.send),
            ),
          )
        ],
      ),
    );
  }
}


```

## Additional information

Will update widgets go on.
