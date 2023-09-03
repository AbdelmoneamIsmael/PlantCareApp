import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_care/core/colors/app_colors.dart';
import 'package:plant_care/core/strings_and_pathes/strings_and_pathes.dart';

class WaterItems extends StatelessWidget {
  const WaterItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              color: Colors.grey,
              offset: Offset(0, 2),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [cheekIcon(), theImage(), cardInformation(context)],
      ),
    );
  }

  Column cardInformation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Monistera Delicioasa',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 18),
        ),
        Text(
          'Philodendronds',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.grey, fontSize: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FaIcon(
              Icons.info_outline,
              color: Colors.red,
              size: 20,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '3 days left',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: const Color.fromARGB(255, 190, 99, 93), fontSize: 15),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FaIcon(
              FontAwesomeIcons.droplet,
              color: Color.fromARGB(255, 25, 108, 216),
              size: 20,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '3 days left',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: const Color.fromARGB(255, 25, 108, 216), fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }

  Container theImage() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(StringsAndPathes.cardImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  CircleAvatar cheekIcon() {
    return CircleAvatar(
      backgroundColor: AppColors.iconOrTextLinkColor,
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}
