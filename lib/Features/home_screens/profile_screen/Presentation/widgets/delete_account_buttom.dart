import 'package:flutter/material.dart';

class DeleteAccountBtn extends StatelessWidget {
  const DeleteAccountBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: TextButton(
          onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side:const  BorderSide(color: Colors.red)
          )
        ),
          child: Text(
            'Delete this Account',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.red),
          ),
      ),
    );
  }
}
