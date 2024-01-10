import 'package:t_ecommerce/common/widgets/loaders/custom_animation_loader.dart';
import 'package:t_ecommerce/exports.dart';

class CustomFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              CustomAnimationLoader(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading(){
    Navigator.of(Get.context!).pop();
  }
}
