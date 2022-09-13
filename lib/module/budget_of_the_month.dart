import 'package:iaa_project/export.dart';

class BudgetOfTheMonth extends StatelessWidget {
  const BudgetOfTheMonth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorResource.backgroundScaffoldColor,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: Dimensions.padding23),
                    decoration: const BoxDecoration(
                        color: ColorResource.kPrimaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(Dimensions.radius50),
                            bottomRight: Radius.circular(Dimensions.radius50))),
                    width: double.infinity,
                    height: Get.height * .3,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: Dimensions.fontSizeOverLarge),
                                  child:
                                      Image.asset("assets/images/Ellipse1.png"),
                                ),
                                const SizedBox(
                                  width: Dimensions.paddingSizeLarge,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: Dimensions.paddingSizeDefault),
                                      child: Image.asset(
                                          "assets/images/saving.png"),
                                    ),
                                    Text("80,000",
                                        style: CustomThemes.poppinsBold
                                            .copyWith(
                                                fontSize: Dimensions.fontSize36,
                                                color: ColorResource.white))
                                  ],
                                ),
                                Image.asset("assets/images/Ellipse2.png")
                              ],
                            ),
                            const SizedBox(
                              height: Dimensions.paddingSizeDefault,
                            ),
                            Text(
                              "Budget du mois de Janvier 2022",
                              style: CustomThemes.poppinsLight.copyWith(
                                  fontSize: Dimensions.fontSizeExtraLarge,
                                  color: ColorResource.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: demoCategory.length,
                        itemBuilder: (ctx, index) {
                          var currentCategory = demoCategory[index];
                          return CategoryCardWidget(
                              category: currentCategory, index: index);
                        }),
                  )
                ],
              ),
            )));
  }
}
