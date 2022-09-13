import 'package:iaa_project/export.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorResource.backgroundScaffoldColor,
        body: SingleChildScrollView(
          child: Stack(
            //crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const BackButtonWidget(),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.paddingFormFieldAuth,
                    right: Dimensions.paddingFormFieldAuth,
                    top: Get.height * .2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        Constant.appName,
                        style: CustomThemes.poppinsBold.copyWith(
                          fontSize: Dimensions.fontSizeExtraLarge * 4,
                          //color: ColorResource.textSecondaryColor
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .1,
                    ),
                    Center(
                      child: Text(
                        'forgot_password'.tr,
                        style: CustomThemes.poppinsBold.copyWith(
                          fontSize: Dimensions.fontSizeExtraLarge,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Center(
                      child: Text(
                        'forgot_password_message'.tr,
                        textAlign: TextAlign.center,
                        style: CustomThemes.poppinsLight.copyWith(
                          fontSize: Dimensions.fontSizeLarge,
                          //color: ColorResource.resetPasswordTextColor
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .05,
                    ),
                    Text("email".tr.toUpperCase(),
                        style: CustomThemes.poppinsBold.copyWith(
                          fontSize: Dimensions.fontSizeSmall,
                        )),
                    const SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    TextFieldCustom(
                      hintText: 'email'.tr.toLowerCase(),
                      padding: const EdgeInsets.only(
                          left: Dimensions.paddingSizeLarge),
                    ),
                    SizedBox(
                      height: Get.height * .04,
                    ),
                    ButtonWidget(
                      title: "send_email".tr,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: Get.height * .025,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
   // Container(
          //   height: Get.height * .5,
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     color: Colors.red,
          //     image: DecorationImage(
          //       image: AssetImage(
          //         "assets/images/film_image.jpeg",
          //       ),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),