import 'package:flutter/material.dart';

import '../../../../../core/reuseable_widgets/my_buttom.dart';
import 'delete_account_buttom.dart';

class AccountMangementBtns extends StatelessWidget {
  const AccountMangementBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(30),
      child:Column(
        children: [

            MyBTN(text: 'Sign out', onTap: () {},height: 55,),
            const SizedBox(height: 20,),
            const  DeleteAccountBtn(),

        ],
      ),
    );
  }
}
