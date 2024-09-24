part of 'dev_py_location_widget.dart';

class DevPyLocationField extends StatelessWidget {
  const DevPyLocationField({
    super.key,
    this.label,
  });

  final String? label;

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

    return TextFormField(
      style: styles.searchText?.copyWith(
        color: colors.backgroudColor,
      ),
      readOnly: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: colors.brandColor,
        hintText: label,
        hintStyle: styles.hintStyle?.copyWith(
          color: colors.backgroudColor,
        ),
        enabledBorder: border,
        disabledBorder: border,
        focusedBorder: border,
        errorBorder: border,
        focusedErrorBorder: border,
      ),
    );
  }
}
