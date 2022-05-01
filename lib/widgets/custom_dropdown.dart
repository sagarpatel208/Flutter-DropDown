import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List list;
  final String value;
  final Function onChange;

  const CustomDropDown({
    Key? key,
    required this.list,
    required this.value,
    required this.onChange,
  }) : super(key: key);
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.only(left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black38),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          dropdownColor: Colors.white,
          value: widget.value,
          onChanged: (dynamic newValue) {
            widget.onChange(newValue);
          },
          items: widget.list.map((location) {
            return DropdownMenuItem(
              child: Text(
                location,
                softWrap: true,
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
              value: location,
            );
          }).toList(),
        ),
      ),
    );
  }
}
