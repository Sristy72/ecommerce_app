import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Profile'),
        showSnackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ///profile picture
                    TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              ///Details
              SizedBox(height: TSizes.spaceBetweenItems/2,),
              Divider(),
              SizedBox(height: TSizes.spaceBetweenItems,),
              
              TSectionHeading(title: 'Profile Information', showActionButton: false,),
              SizedBox(height: TSizes.spaceBetweenItems,),

              ///Profile Info
              TProfileMenu(title: 'Name', value: 'Eshita Mondol', onTap: () {},),
              TProfileMenu(title: 'Username', value: 'Eshita Mondol', onTap: () {},),

              SizedBox(height: TSizes.spaceBetweenItems,),
              Divider(),
              SizedBox(height: TSizes.spaceBetweenItems,),

              ///Personal Info
              TSectionHeading(title: 'Personal Information', showActionButton: false,),
              SizedBox(height: TSizes.spaceBetweenItems,),
              
              TProfileMenu(title: 'User ID', value: '34435', onTap: (){}, icon: Iconsax.copy,),
              TProfileMenu(title: 'E-mail', value: 'eshitamondolbd@gmail.com', onTap: (){}),
              TProfileMenu(title: 'Phone Number', value: '01321081439', onTap: (){}),
              TProfileMenu(title: 'Gender', value: 'Male', onTap: (){}),
              TProfileMenu(title: 'Date of Birth', value: '11 july, 1998', onTap: (){}),

              Divider(),

              SizedBox(height: TSizes.spaceBetweenItems,),
              
              Center(child: TextButton(onPressed: (){}, child: Text('Close Account', style: TextStyle(color: Colors.red),)))
            ],
          ),
        ),
      ),
    );
  }
}


