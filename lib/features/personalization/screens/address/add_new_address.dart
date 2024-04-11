import 'package:baby_hub/common/widgets/appbar/appbar.dart';
import 'package:baby_hub/utils/constants/colors.dart';
import 'package:baby_hub/utils/constants/sizes.dart';
import 'package:baby_hub/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Add New Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: dark ? TColors.grey : TColors.darkerGrey,
                          width: 3),
                    ),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: dark ? TColors.grey : TColors.darkerGrey,
                          width: 3),
                    ),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Street",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: dark ? TColors.grey : TColors.darkerGrey,
                                width: 3),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields * 1.5),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Postal Code",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: dark ? TColors.grey : TColors.darkerGrey,
                                width: 3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "City",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: dark ? TColors.grey : TColors.darkerGrey,
                                width: 3),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields * 1.5),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "State",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: dark ? TColors.grey : TColors.darkerGrey,
                                width: 3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Country",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: dark ? TColors.grey : TColors.darkerGrey,
                          width: 3),
                    ),
                  ),
                ),
                SizedBox(height: TSizes.defaultSpace * 2),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
