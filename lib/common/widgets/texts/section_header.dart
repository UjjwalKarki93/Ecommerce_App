import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    this.textColor,
    this.showActionBUtton = true,
    required this.sectionTitle,
    this.buttonTitle = "View All",
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionBUtton;
  final String sectionTitle, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionBUtton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
