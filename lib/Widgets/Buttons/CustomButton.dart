import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.title, this.color, this.onPressed});
  String? title;
  Color? color;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        borderRadius: BorderRadius.circular(15),
        padding: EdgeInsets.all(15),
        color: color,
        child: AutoSizeText(title!),
        onPressed: onPressed,
      ),
    );
  }
}
