import 'package:iaa_project/export.dart';

class CategoryCardWidget extends StatelessWidget {
  final Category category;
  final int index;
  const CategoryCardWidget(
      {Key? key, required this.category, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: index == 0 ? Get.height * 0.25 : Get.height * .05,
          left: Dimensions.paddingSizeDefault,
          right: Dimensions.paddingSizeDefault),
      height: Get.height * 0.31,
      padding: const EdgeInsets.symmetric(
          vertical: Dimensions.paddingSizeLarge,
          horizontal: Dimensions.fontSize36),
      decoration: const BoxDecoration(
          color: ColorResource.white,
          borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius50))),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(Dimensions.paddingSizeSmall / 2),
                decoration: const BoxDecoration(
                    color: ColorResource.grey,
                    borderRadius:
                        BorderRadius.all(Radius.circular(Dimensions.radius))),
                child: Image.asset(
                  category.categoryImg,
                  height: 50,
                  width: 50,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(category.categoryName,
                      style: CustomThemes.poppinsSemiBold.copyWith(
                          fontSize: Dimensions.fontSizeLarge,
                          color: ColorResource.black)),
                  Text("${category.maxBudget} / par mois",
                      style: CustomThemes.poppinsSemiBold.copyWith(
                          fontSize: Dimensions.fontSizeExtraLarge,
                          color: ColorResource.categoryMaxBudgetColor))
                ],
              )
            ],
          ),
          const SizedBox(height: Dimensions.paddingSizeLarge),
          LinearPercentIndicator(
            width: Get.width * .7,
            lineHeight: 20.0,
            center: Text(
              "${category.alreadySpent} / par mois",
              style: CustomThemes.poppinsBold.copyWith(
                  fontSize: Dimensions.fontSizeExtraLarge,
                  color: ColorResource.white),
            ),
            percent: UtilsFunctions.calculatePercent(
                category.maxBudget, category.alreadySpent),
            barRadius: const Radius.circular(Dimensions.radius),
            progressColor: ColorResource.kPrimaryColor,
          ),
          const SizedBox(height: Dimensions.paddingSizeSmall),
          UtilsFunctions.checkBudgetExceeded(
              category.maxBudget, category.alreadySpent),
          const SizedBox(height: Dimensions.paddingSizeDefault),
          const Divider(
            color: Colors.grey,
          ),
          const Spacer(),
          Center(
              child: UtilsFunctions.statusBudgetExceeded(
                  category.maxBudget, category.alreadySpent)),
          const SizedBox(height: Dimensions.paddingSizeDefault),
        ],
      ),
    );
  }
}
