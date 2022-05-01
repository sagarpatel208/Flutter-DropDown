import 'package:flutter/material.dart';

class CustomMapDropDown extends StatefulWidget {
  final List<dynamic> list;
  final dynamic value;
  final Function onChange;

  const CustomMapDropDown({
    Key? key,
    required this.list,
    required this.value,
    required this.onChange,
  }) : super(key: key);
  @override
  _CustomMapDropDownState createState() => _CustomMapDropDownState();
}

class _CustomMapDropDownState extends State<CustomMapDropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: DecoratedBox(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.0, style: BorderStyle.solid, color: Colors.black38),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
            child: DropdownButton<dynamic>(
              isExpanded: true,
              elevation: 1,
              value: widget.value,
              iconEnabledColor: Colors.black38,
              iconDisabledColor: Colors.black38,
              underline: const SizedBox(),
              onChanged: (dynamic newValue) {
                widget.onChange(newValue);
              },
              items: widget.list.map((dynamic data) {
                return DropdownMenuItem<dynamic>(
                  value: data,
                  child: Text(
                    data.name.toString(),
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
