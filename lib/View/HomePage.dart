import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ososs/Controller/TextProvider.dart';
import 'package:ososs/Widgets/Buttons/CustomButton.dart';
import 'package:ososs/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    textProvider = Provider.of<TextProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () async {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        textProvider.setText(value);
                      },
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Divider(
                      height: height * 0.1,
                      color: Colors.transparent,
                    ),
                    AutoSizeText(
                      textProvider.text.isEmpty
                          ? "Your name"
                          : textProvider.text,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                        onPressed: () {
                          textProvider.clearText();
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 18,
                          color: Colors.red,
                        ),
                        label: AutoSizeText(
                          "Clear text",
                          minFontSize: 16,
                          style: TextStyle(color: Colors.red),
                        )),
                    CustomButton(
                      title: "Go to page 1",
                      color: Colors.blue[900],
                      onPressed: () {
                        Navigator.pushNamed(context, "Page1");
                      },
                    ),
                    Divider(
                      color: Colors.transparent,
                    ),
                    CustomButton(
                      title: "Go to page 2",
                      color: Colors.blue[300],
                      onPressed: () {
                        Navigator.pushNamed(context, "Page2");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
