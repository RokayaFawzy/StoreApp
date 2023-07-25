import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_text_fild.dart';

import '../widgets/custom_buttom.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String id = 'update product';
  String? productName, desc, image;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'update product',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        backgroundColor: Color.fromARGB(249, 164, 137, 202),
        // elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            CustomTextField(
              onChanged: (data) {
                productName = data;
              },
              hintText: 'product Name',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              onChanged: (data) {
                desc = data;
              },
              hintText: 'description',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              inputType: TextInputType.number,
              onChanged: (data) {
                price = int.parse(data);
              },
              hintText: 'price',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              onChanged: (data) {
                image = data;
              },
              hintText: 'image',
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
              text: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}
