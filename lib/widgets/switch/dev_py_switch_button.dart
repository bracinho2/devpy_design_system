import 'package:flutter/material.dart';

class DevPySwitchButtonWidget extends StatefulWidget {
  const DevPySwitchButtonWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function(bool value) onChanged;

  @override
  State<DevPySwitchButtonWidget> createState() =>
      _DevPySwitchButtonWidgetState();
}

class _DevPySwitchButtonWidgetState extends State<DevPySwitchButtonWidget> {
  bool value = false;

  @override
  void initState() {
    super.initState();
    value = widget.value;
  }

  void showValue() {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (value) {
        showValue();
        widget.onChanged(value);
      },
    );
  }
}
