import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class DevPyDropDownButtonWidget<T> extends StatelessWidget {
  const DevPyDropDownButtonWidget({
    super.key,
    this.label,
    required this.items,
    this.hintText,
    required this.onChanged,
    this.validator,
    this.value,
    this.hintTextColor,
    this.active = false,
    this.isFilled = true,
    this.errorText,
  });

  final String? label;
  final List<DropdownMenuItem<T>> items;
  final String? hintText;
  final Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final T? value;
  final Color? hintTextColor;
  final bool active;
  final bool isFilled;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<DevPyColors>()!;
    final styles = Theme.of(context).extension<DevPyStyles>()!;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        16.0,
      ),
      borderSide: const BorderSide(
        width: 3,
        color: Colors.transparent,
      ),
    );

    return DropdownButtonFormField<T>(
      value: value,
      focusColor: Colors.transparent,
      icon: Icon(
        Icons.arrow_downward_rounded,
        color: active ? colors.brandColor : colors.backgroudColor,
      ),
      validator: validator,
      decoration: InputDecoration(
        errorText: errorText,
        filled: isFilled,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        errorStyle: TextStyle(
          color: colors.brandColor,
        ),
        fillColor: colors.brandColor,
        enabledBorder: border,
        focusedBorder: border,
        hintText: label,
        hintStyle: styles.hintStyle?.copyWith(
          color: hintTextColor ?? colors.backgroudColor,
        ),
        contentPadding: const EdgeInsets.all(20),
      ),
      isExpanded: true,
      items: items,
      onChanged: onChanged,
    );
  }
}
