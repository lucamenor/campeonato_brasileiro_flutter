import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget header;
  final Widget body;
  final String? textButton;
  final VoidCallback? buttonCallback;

  const CustomCard({
    Key? key,
    required this.header,
    required this.body,
    this.textButton,
    this.buttonCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            SizedBox(height: 16.0),
            body,
            if (textButton != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColorDark,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                    child: Text(textButton!),
                    onPressed: buttonCallback,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
