import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {

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
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Street",
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields * 1.5),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Postal Code",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "City",
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields * 1.5),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "State",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Country",
                  ),
                ),
                const SizedBox(height: TSizes.defaultSpace * 2),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: TColors.white),
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
