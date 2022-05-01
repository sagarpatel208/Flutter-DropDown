import 'package:flutter/material.dart';
import 'package:flutter_dropdown/model/dropdown_model.dart';
import 'package:flutter_dropdown/utilities/data_source.dart';
import 'package:flutter_dropdown/widgets/custom_dropdown.dart';
import 'package:flutter_dropdown/widgets/custom_map_dropdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDown',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List fruits = DataSource.fruitsData;
  String selectedFruit = DataSource.fruitsData[0];

  List<DropDownModel> mapFruites = DataSource.mapFruitsData;
  DropDownModel selectedMapFruit = DataSource.mapFruitsData[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Flutter DropDown",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Simple DropDown",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            CustomDropDown(
              list: fruits,
              onChange: (newValue) {
                setState(() {
                  selectedFruit = newValue;
                });
              },
              value: selectedFruit,
            ),
            const SizedBox(height: 20),
            const Text(
              "Map DropDown",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            CustomMapDropDown(
              list: mapFruites,
              onChange: (newValue) {
                setState(() {
                  selectedMapFruit = newValue;
                });
              },
              value: selectedMapFruit,
            ),
            const SizedBox(height: 25),
            RichText(
              text: TextSpan(
                text: 'Selected Dropdown Value: ',
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: selectedFruit,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'Selected Map Dropdown Value: ',
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "Id: ${selectedMapFruit.id}  Name: ${selectedMapFruit.name}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
