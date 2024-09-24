part of 'dev_py_location_widget.dart';

class DevPyGetLocationButton extends StatelessWidget {
  const DevPyGetLocationButton._({
    required this.backgroudColor,
    required this.icon,
    required this.iconColor,
    this.onTap,
  });

  final GetThemeColor backgroudColor;
  final IconData icon;
  final GetThemeColor iconColor;
  final VoidCallback? onTap;

  factory DevPyGetLocationButton.enabled({
    VoidCallback? onTap,
  }) {
    return DevPyGetLocationButton._(
      backgroudColor: (color) => color,
      iconColor: (color) => color,
      icon: Icons.center_focus_strong,
      onTap: onTap,
    );
  }

  factory DevPyGetLocationButton.disabled({
    VoidCallback? onTap,
  }) {
    return DevPyGetLocationButton._(
      backgroudColor: (color) => color,
      iconColor: (color) => color,
      icon: Icons.center_focus_strong,
      onTap: onTap,
    );
  }

  factory DevPyGetLocationButton.updating({
    VoidCallback? onTap,
  }) {
    return DevPyGetLocationButton._(
      backgroudColor: (color) => color,
      iconColor: (color) => color,
      icon: Icons.sync,
      onTap: onTap,
    );
  }

  @override
  Widget build(context) {
    final colors = Theme.of(context).extension<DevPyColors>()!;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: backgroudColor(colors.getLocationButton!),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Icon(
          icon,
          color: iconColor(colors.backgroudColor!),
        ),
      ),
    );
  }
}
