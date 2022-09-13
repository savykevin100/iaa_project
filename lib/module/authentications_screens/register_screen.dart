import 'package:iaa_project/export.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorResource.backgroundScaffoldColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButtonWidget(),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.paddingFormFieldAuth,
                  right: Dimensions.paddingFormFieldAuth,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: CircleAvatar(
                              radius: 60,
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: ColorResource.kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  child: const InkWell(
                                      child: Center(
                                    child: Icon(
                                      Icons.person,
                                      size: 60,
                                      color: ColorResource.white,
                                    ),
                                  )))),
                        ),
                        const SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "add_profile".tr,
                          style: CustomThemes.poppinsMedium
                              .copyWith(fontSize: Dimensions.fontSizeLarge),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    Text("phone_number".tr.toUpperCase(),
                        style: CustomThemes.poppinsBold.copyWith(
                          fontSize: Dimensions.fontSizeSmall,
                        )),
                    const SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    TextFieldCustom(
                      hintText: 'phone_number'.tr.toLowerCase(),
                      padding: const EdgeInsets.only(
                          left: Dimensions.paddingSizeLarge),
                    ),
                    SizedBox(
                      height: Get.height * .02,
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
                      keyboardType: TextInputType.emailAddress,
                      padding: const EdgeInsets.only(
                          left: Dimensions.paddingSizeLarge),
                    ),
                    SizedBox(
                      height: Get.height * .02,
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
                      padding: const EdgeInsets.only(
                          left: Dimensions.paddingSizeLarge),
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Text("confirm_password".tr.toUpperCase(),
                        style: CustomThemes.poppinsBold.copyWith(
                          fontSize: Dimensions.fontSizeSmall,
                        )),
                    const SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    TextFieldCustom(
                      hintText: 'confirm_password'.tr.toLowerCase(),
                      padding: const EdgeInsets.only(
                          left: Dimensions.paddingSizeLarge),
                    ),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    ButtonWidget(
                      title: "register".tr.toUpperCase(),
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
                          "register_with".tr,
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
                      height: Dimensions.paddingSizeExtraLarge * 2,
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
