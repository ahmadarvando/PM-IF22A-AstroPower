import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TSettingMenuTile extends StatelessWidget {
  const TSettingMenuTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.trailing,
      this.onTap})
      : super(key: key);

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
