import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../../theme/colors/colors.dart';
import '../../theme/styles/styles.dart';

part 'dev_py_get_location_button.dart';
part 'dev_py_location_field.dart';

class DevPyLocationWidget extends StatefulWidget {
  const DevPyLocationWidget({
    super.key,
    required this.label,
    this.isLocationEnabled = false,
    this.areCoordinatesEmpty = false,
    this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLocationEnabled;
  final bool areCoordinatesEmpty;

  @override
  State<DevPyLocationWidget> createState() => _DevPyLocationWidgetState();
}

class _DevPyLocationWidgetState extends State<DevPyLocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DevPyLocationField(
            label: widget.label,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        !widget.isLocationEnabled && widget.areCoordinatesEmpty
            ? DevPyGetLocationButton.enabled(
                onTap: widget.onPressed,
              )
            : DevPyGetLocationButton.disabled(),
      ],
    );
  }
}
