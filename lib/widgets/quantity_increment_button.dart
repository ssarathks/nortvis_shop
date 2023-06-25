import 'package:flutter/material.dart';

class QuantityIncrementButton extends StatelessWidget {
  const QuantityIncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: const [
          ChangeButton(
            buttonText: "-",
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Text("1"),
          SizedBox(
            width: 10,
          ),
          ChangeButton(
            buttonText: "+",
            backgroundColor: Colors.black,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class ChangeButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  const ChangeButton(
      {super.key,
      required this.buttonText,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: backgroundColor),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
