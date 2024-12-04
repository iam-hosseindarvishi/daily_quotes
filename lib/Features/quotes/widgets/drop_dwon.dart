import 'package:flutter/material.dart';

class CategoryDropDown extends StatefulWidget {
  const CategoryDropDown({super.key});

  @override
  State<CategoryDropDown> createState() => _CategoryDropDownState();
}

class _CategoryDropDownState extends State<CategoryDropDown> {
  var currentValue = "برنامه نویسی";
  // var dropdownOptions = [
  //   DropdownMenuItem<String>(value: "فلاتر", child: Text("فلاتر"))
  // ];
  var dropdownOptions = ["برنامه نویسی", "فلاتر", "طراحی", "سخت افزار"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: currentValue,
      onChanged: (value) {
        currentValue = value!;
        setState(() {});
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(value)));
      },
      items: dropdownOptions.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
