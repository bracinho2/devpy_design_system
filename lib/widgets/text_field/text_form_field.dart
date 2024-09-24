import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/colors/colors.dart';
import '../../theme/styles/styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.errorText,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    required this.controller,
    this.initialValue,
    this.prefix,
    this.padding = const EdgeInsets.all(0),
    this.onTap,
    this.onSearch,
    this.isFilled = true,
    this.filledColor,
    this.cursorColor,
    this.textColor,
    this.hintTextColor,
    this.errorColor,
    this.obscureText = false,
    this.isWeb = false,
    this.keyboardType,
    this.isReadOnly = false,
    this.maxLines = 1,
    this.onClean,
    required this.colors,
    required this.styles,
  });

  final String label;
  final Function(String?)? onChanged;
  final String? errorText;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController controller;
  final String? initialValue;
  final Function()? onSearch;
  final String? prefix;
  final EdgeInsets padding;
  final Function()? onTap;
  final bool isFilled;
  final Color? filledColor;
  final Color? cursorColor;
  final Color? textColor;
  final Color? hintTextColor;
  final Color? errorColor;
  final bool obscureText;
  final bool isWeb;
  final TextInputType? keyboardType;
  final bool isReadOnly;
  final int maxLines;
  final VoidCallback? onClean;
  final DevPyColors colors;
  final DevPyStyles styles;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = true;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(updateOnChange);

    showPassword = widget.obscureText;
  }

  void updateOnChange() {
    setState(() {
      canClean();
    });
    widget.onClean?.call();
  }

  @override
  void dispose() {
    widget.controller.removeListener(updateOnChange);
    super.dispose();
  }

  bool isPasswordField() {
    return widget.obscureText && widget.controller.text.isNotEmpty;
  }

  bool canClean() {
    return widget.controller.text.isEmpty;
  }

  bool isReadOnly() {
    return widget.onTap != null ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        16.0,
      ),
      borderSide: const BorderSide(
        width: 3,
        color: Colors.transparent,
      ),
    );

    return Padding(
      padding: widget.padding,
      child: TextFormField(
        maxLines: widget.maxLines,
        keyboardType: widget.keyboardType,
        obscureText: showPassword,
        controller: widget.controller,
        cursorColor: widget.cursorColor ?? widget.colors.backgroudColor,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        onSaved: widget.onSaved,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        style: widget.styles.searchText?.copyWith(
          color: widget.textColor ?? widget.colors.backgroudColor,
        ),
        initialValue: widget.initialValue,
        readOnly: isReadOnly(),
        decoration: InputDecoration(
          errorText: widget.errorText,
          filled: widget.isFilled,
          fillColor: widget.filledColor ?? widget.colors.brandColor,
          suffixIcon: SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isPasswordField()
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: widget.isWeb
                                ? widget.colors.brandColor
                                : widget.colors.backgroudColor,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                InkWell(
                  onTap: () => widget.controller.clear(),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      canClean() ? null : Icons.close,
                      color: widget.isWeb
                          ? widget.colors.brandColor
                          : widget.colors.backgroudColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          prefixIcon: widget.prefix != null
              ? Center(
                  widthFactor: 0.0,
                  child: Text(
                    widget.prefix!,
                    style: widget.styles.hintStyle?.copyWith(
                      color: widget.colors.backgroudColor,
                    ),
                  ),
                )
              : null,
          hintText: widget.label,
          hintStyle: widget.styles.hintStyle?.copyWith(
            color: widget.hintTextColor ?? widget.colors.backgroudColor,
          ),
          errorStyle: widget.styles.formError?.copyWith(
            color: widget.errorColor ?? widget.colors.brandColor,
          ),
          enabledBorder: border,
          disabledBorder: border,
          focusedBorder: border,
          errorBorder: border,
          focusedErrorBorder: border,
        ),
      ),
    );
  }
}
