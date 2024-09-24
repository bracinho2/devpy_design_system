import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class DevPyAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const DevPyAppBarWidget({
    super.key,
    required this.title,
    this.imagePath,
    this.actions,
    this.goTo,
    this.onLongPress,
  });

  final String title;
  final String? imagePath;
  final Widget? actions;
  final VoidCallback? goTo;
  final VoidCallback? onLongPress;

  @override
  State<DevPyAppBarWidget> createState() => _DevPyAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _DevPyAppBarWidgetState extends State<DevPyAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<DevPyColors>()!;

    final styles = Theme.of(context).extension<DevPyStyles>()!;

    final canGoBack = widget.goTo != null;

    return Container(
      height: 80,
      color: colors.brandColor,
      child: Padding(
        padding: canGoBack ? EdgeInsets.zero : const EdgeInsets.only(left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    if (canGoBack)
                      IconButton(
                        onPressed: widget.goTo,
                        icon: Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: colors.backgroudColor,
                        ),
                      ),
                    GestureDetector(
                      onLongPress: widget.onLongPress,
                      child: SizedBox(
                        width: 45,
                        child: Image.asset(
                          widget.imagePath == null
                              ? 'assets/images/logo_dev_py.png'
                              : widget.imagePath!,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                Text(
                  widget.title,
                  style: styles.appBarText?.copyWith(
                    color: colors.backgroudColor,
                  ),
                ),
              ],
            ),
            if (widget.actions != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.actions!,
              ),
          ],
        ),
      ),
    );
  }
}
