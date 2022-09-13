import '../../export.dart';

class UtilsFunctions {
  UtilsFunctions._();

  static double calculatePercent(double maxBudget, double alreadySpent) {
    var result = ((alreadySpent * 100) / maxBudget) / 100;

    if (result >= 1.0) {
      return 1.0;
    } else {
      return result;
    }
  }

  static Widget statusBudgetExceeded(double maxBudget, double alreadySpent) {
    var result = ((alreadySpent * 100) / maxBudget) / 100;

    if (result < 1.0) {
      return Text(
        "congratulations".tr,
        style: CustomThemes.poppinsBold
            .copyWith(color: ColorResource.kPrimaryColor),
      );
    } else if (result == 1.0) {
      return Text(
        "warning".tr,
        style: CustomThemes.poppinsBold.copyWith(color: ColorResource.red),
      );
    } else {
      return Text(
        "oops".tr,
        style: CustomThemes.poppinsBold
            .copyWith(color: ColorResource.categoryMaxBudgetColor),
      );
    }
  }

  static Widget checkBudgetExceeded(double maxBudget, double alreadySpent) {
    var result = ((alreadySpent * 100) / maxBudget) / 100;

    if (result < 1.0) {
      return Expanded(
        flex: 2,
        child: Text(
          "budgetNoExceeded".tr,
          maxLines: 2,
          style: CustomThemes.poppinsLight.copyWith(color: ColorResource.black),
        ),
      );
    } else if (result == 1.0) {
      return Row(
        children: [
          const Icon(
            Icons.warning,
            color: ColorResource.red,
          ),
          const SizedBox(
            width: Dimensions.paddingSizeSmall,
          ),
          Expanded(
            flex: 2,
            child: Text(
              "limitedBudget".tr,
              maxLines: 2,
              style: CustomThemes.poppinsLight
                  .copyWith(color: ColorResource.black),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          const Icon(
            Icons.dangerous,
            color: ColorResource.categoryMaxBudgetColor,
          ),
          const SizedBox(
            width: Dimensions.paddingSizeSmall,
          ),
          Expanded(
            flex: 2,
            child: Text(
              "budgetExceeded".tr,
              maxLines: 2,
              style: CustomThemes.poppinsLight
                  .copyWith(color: ColorResource.black),
            ),
          ),
        ],
      );
    }
  }
}
