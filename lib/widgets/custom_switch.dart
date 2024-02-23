import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final Color activeColor;
  final Color inactiveColor;
  final double thumbSize;
  final void Function(bool) onToggle;

  const CustomSwitch({
    super.key,
    required this.value,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.thumbSize = 40,
    required this.onToggle,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onToggle(!widget.value);
        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: widget.value ? widget.activeColor : widget.inactiveColor,
        ),
        width: widget.thumbSize * 2.5,
        height: widget.thumbSize * 1.4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            alignment:
                widget.value ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: widget.thumbSize,
              height: widget.thumbSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.thumbSize * 0.5),
                color: widget.value
                    ? ColorManager.enSwitch
                    : ColorManager.disSwitch,
              ),
              child: widget.value
                  ? const Icon(
                      Icons.dark_mode_outlined,
                      color: Colors.white,
                      size: 18,
                    )
                  : const Icon(
                      Icons.light_mode,
                      color: Colors.orange,
                      size: 18,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
