import 'package:paalii/common/widgets/appbar/appbar.dart';
import 'package:paalii/common/widgets/images/circular_image.dart';
import 'package:paalii/common/widgets/texts/section_heading.dart';
import 'package:paalii/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:paalii/utils/constants/colors.dart';
import 'package:paalii/utils/constants/image_strings.dart';
import 'package:paalii/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImageStrings.profile,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Edit profile picture",
                        style: TextStyle(color: TColors.primary),
                      ),
                    ),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const SectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Profile information
              ProfileMenu(
                onPressed: () {},
                title: "Name",
                value: "John Penofilia",
                icon: Iconsax.arrow_right_34,
              ),
              ProfileMenu(
                onPressed: () {},
                title: "Username",
                value: "Penofilia",
                icon: Iconsax.arrow_right_34,
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              // More info
              ProfileMenu(
                onPressed: () {},
                title: "User ID",
                value: "12345",
              ),
              ProfileMenu(
                onPressed: () {},
                title: "Email",
                value: "penofiliajohn@gmail.com",
                icon: Iconsax.arrow_right_34,
              ),
              ProfileMenu(
                onPressed: () {},
                title: "Phone",
                value: "+2348134577623",
                icon: Iconsax.arrow_right_34,
              ),

              // Close button
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Close Account",
                    style: TextStyle(color: TColors.error),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
