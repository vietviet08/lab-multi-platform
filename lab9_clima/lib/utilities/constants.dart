import 'package:flutter/material.dart';

const kCityTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
  color: Colors.black87,
);

const kTempTextStyle = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.w700,
  color: Colors.black87,
);

const kConditionTextStyle = TextStyle(
  fontSize: 80.0,
);

const kDescriptionTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.w500,
  color: Colors.black54,
  letterSpacing: 1.2,
);

const kDetailTitleStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  color: Colors.black54,
);

const kDetailValueStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.black87,
);

const kButtonTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  prefixIcon: Icon(
    Icons.search,
    color: Colors.blueGrey,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
    borderSide: BorderSide.none,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
);
