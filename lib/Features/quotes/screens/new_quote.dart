import 'package:flutter/material.dart';

class NewQuote extends StatefulWidget {
  const NewQuote({super.key});

  @override
  State<NewQuote> createState() => _NewQuoteState();
}

class _NewQuoteState extends State<NewQuote> {
  var currentValue = "طراحی";
  @override
  Widget build(BuildContext context) {
    var dropdownOptions = ["برنامه نویسی", "طراحی", "سخت"];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("create new quote"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "ایجاد نقل قول جدید",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(),
              InputTextField(
                hintText: "نقل قول را وارد کنید",
              ),
              const SizedBox(
                height: 20,
              ),
              InputTextField(hintText: "نام گوینده رو وارد کنید"),
              const SizedBox(
                height: 20,
              ),
              DropdownButton<String>(
                value: currentValue,
                onChanged: (value) {},
                items: dropdownOptions
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text("ذخیره نقل قول"),
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ));
  }
}

class InputTextField extends StatelessWidget {
  String hintText;
  InputTextField({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(), hintText: hintText),
    );
  }
}
