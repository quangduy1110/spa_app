import 'package:flutter/material.dart';

class AppDialogImg extends StatelessWidget {
  const AppDialogImg({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 8),
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              image,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
