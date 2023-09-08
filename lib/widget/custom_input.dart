import 'package:code/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final String iconUrl;
  const CustomInput(
      {Key? key,
      required this.label,
      required this.placeholder,
      required this.iconUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${label}',
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          // width: double.infinity,
          height: 50,
          child: Row(
            children: [
              Image.asset(
                'assets/${iconUrl}',
                width: 17,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                style: whiteTextStyle,
                decoration: InputDecoration.collapsed(
                    border: OutlineInputBorder(),
                    hintText: '${placeholder}',
                    hintStyle: grayTextStyle),
              ))
            ],
          ),
          decoration: BoxDecoration(
              color: bgColor2, borderRadius: BorderRadius.circular(12)),
        )
      ],
    );
  }
}
