import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/features/personalization/screens/address/add_new_address.dart';
import 'package:flutter_application_1/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child: const Icon(
          Iconsax.add,
          color: Colors.white,
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddreess: true),
              TSingleAddress(selectedAddreess: false)
            ],
          ),
        ),
      ),
    );
  }
}
