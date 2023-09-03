import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePhotoEditingButtom extends StatelessWidget {
  const ProfilePhotoEditingButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SizedBox(
          height: 50,
          width: double.infinity,
          child: MaterialButton(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
            onPressed: () {},
            color: Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('change Profile Picture'),
                FaIcon(FontAwesomeIcons.camera),
              ],
            ),
          )),
    );
  }
}
