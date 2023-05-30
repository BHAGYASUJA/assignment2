
import 'package:flutter/material.dart';


class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:10),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset("images/yoga.jpg"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}