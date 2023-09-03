import 'package:flutter/material.dart';

import '../../../../../core/colors/app_colors.dart';

class TextBoxEditSection extends StatelessWidget {
  const TextBoxEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          nameTextField(),
          const SizedBox(height: 20,),
          bioTextField(),

        ],
      ),
    );
  }

  nameTextField()=>TextFormField(
    decoration: InputDecoration(
        hintText: 'name',
        suffixIcon: IconButton(icon:const Icon(Icons.edit,) ,onPressed: (){},),
        enabled: true,
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.appBarColor))
    ),
  );
  bioTextField()=> TextFormField(
    decoration: InputDecoration(
        hintText: 'bio',
        suffixIcon: IconButton(icon:const Icon(Icons.edit,) ,onPressed: (){},),
        enabled: true,
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.appBarColor))
    ),
  );
}
