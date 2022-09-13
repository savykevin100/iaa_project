import 'package:iaa_project/export.dart';
class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Dimensions.paddingSizeDefault),
      child: TextButton.icon(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorResource.kPrimaryColor,
          ),
          label: Text(
            "back".tr,
            style: CustomThemes.poppinsBold.copyWith(),
          )),
    );
  }
}
