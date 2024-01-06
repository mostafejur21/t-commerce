import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/constants/image_strings.dart';
import 'images/circular_images.dart';

class CustomUserProfileTile extends StatelessWidget {
  const CustomUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(image: TImages.user, width: 50, height: 50,padding: 0,),
      title: Text("Mostafejur Rahman", style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text("test@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: Colors.white,),),
    );
  }
}
