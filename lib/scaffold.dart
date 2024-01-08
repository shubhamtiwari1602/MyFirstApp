import 'package:flutter/material.dart';

class materialpage extends StatefulWidget {
  const materialpage({super.key});

  @override
  State<materialpage> createState() => _materialpageState();
}

class _materialpageState extends State<materialpage> {
  var no1Button = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: Text(
            'Currency Converter',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Taking \$1 = 81.97INR',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                '\$${result.toStringAsFixed(3)}',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: no1Button,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Please enter the amount in INR',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.currency_rupee),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                        elevation: (15),
                        shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor: (Colors.black),
                        minimumSize: (Size(double.infinity, 50)),
                      ),
                      onPressed: () {
                        result =
                            (double.parse(no1Button.text.toString()) / 81.97);

                        setState(() {});
                      },
                      child: Text('Convert'))),
            ],
          ),
        ));
  }
}
