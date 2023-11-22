import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final String iconUrl;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.iconUrl,
  }) : super(key: key);

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kBlackColor,
            width: 2,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.iconUrl,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: boldTextStyle.copyWith(
                  fontSize: 14,
                  color: kBlackColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
