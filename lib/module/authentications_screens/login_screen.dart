import 'package:iaa_project/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorResource.backgroundScaffoldColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: Dimensions.paddingFormFieldAuth,
                right: Dimensions.paddingFormFieldAuth,
                top: Get.height * .1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    Constant.appName,
                    style: CustomThemes.poppinsBold.copyWith(
                      color: ColorResource.black,
                      fontSize: Dimensions.fontSizeExtraLarge * 4,
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * .08,
                ),
                Text("username".tr.toUpperCase(),
                    style: CustomThemes.poppinsBold.copyWith(
                      fontSize: Dimensions.fontSizeSmall,
                    )),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                TextFieldCustom(
                  hintText: 'username'.tr.toLowerCase(),
                  padding:
                      const EdgeInsets.only(left: Dimensions.paddingSizeLarge),
                ),
                SizedBox(
                  height: Get.height * .05,
                ),
                Text("password".tr.toUpperCase(),
                    style: CustomThemes.poppinsBold.copyWith(
                      fontSize: Dimensions.fontSizeSmall,
                    )),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                TextFieldCustom(
                  hintText: 'password'.tr.toLowerCase(),
                  padding:
                      const EdgeInsets.only(left: Dimensions.paddingSizeLarge),
                ),
                SizedBox(
                  height: Get.height * .04,
                ),
                ButtonWidget(
                  title: "to_log_in".tr,
                  onTap: () {},
                ),
                SizedBox(
                  height: Get.height * .025,
                ),
                Row(children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.fontSizeDefault * 2),
                    child: Text(
                      "to_log_in_with".tr,
                      style: CustomThemes.poppinsMedium.copyWith(),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[400],
                      height: 50,
                    ),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    RoundedIcon(),
                    SizedBox(
                      width: Dimensions.paddingSizeExtraLarge,
                    ),
                    RoundedIcon(),
                  ],
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeExtraLarge * 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "no_account".tr,
                      style: CustomThemes.poppinsMedium.copyWith(),
                    ),
                    const SizedBox(
                      width: Dimensions.paddingSizeSmall,
                    ),
                    Text(
                      Constant.appName.toUpperCase(),
                      style: CustomThemes.poppinsMedium.copyWith(
                          //color: ColorResource.noAccountColor
                          ),
                    ),
                    const SizedBox(
                      width: Dimensions.paddingSizeExtraSmall,
                    ),
                    Text(
                      "?".tr,
                      style: CustomThemes.poppinsMedium.copyWith(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeDefault,
                ),
                InkWell(
                  onTap: () => Get.to(() => const RegisterScreen()),
                  child: Center(
                    child: Text("create_account".tr,
                        style: CustomThemes.poppinsBold.copyWith(
                          fontSize: Dimensions.fontSizeExtraLarge,
                        )),
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
