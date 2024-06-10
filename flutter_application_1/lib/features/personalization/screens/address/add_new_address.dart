import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Add New Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
              ),
              const SizedBox(
                height: TSize.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number'),
              ),
              const SizedBox(
                height: TSize.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street'),
                    ),
                  ),
                  const SizedBox(
                    width: TSize.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Postal Code'),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: TSize.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'City'),
                    ),
                  ),
                  const SizedBox(
                    width: TSize.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'State'),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: TSize.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.global), labelText: 'Country'),
              ),
              const SizedBox(
                height: TSize.defaultSpace,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text('Save')),
              )
            ],
          )),
        ),
      ),
    );
  }
}
