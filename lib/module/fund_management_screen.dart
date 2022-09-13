import 'package:iaa_project/export.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FundManagementScreen extends StatelessWidget {
  const FundManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
      child: ListView(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gestion de fonds",
                    style: CustomThemes.poppinsMedium.copyWith(
                      fontSize: Dimensions.fontSizeExtraLarge * 1.5,
                    ),
                  ),
                  Text(
                    "Dec 2021",
                    style: CustomThemes.poppinsLight.copyWith(),
                  )
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_outlined))
            ],
          ),
          SizedBox(height: Get.height * .05),
          Center(
            child: Container(
              padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
              decoration: const BoxDecoration(
                  color: ColorResource.purpleGrey,
                  borderRadius:
                      BorderRadius.all(Radius.circular(Dimensions.radius))),
              child: Text(
                "1er Dec 2022 - 31 Dec 2022",
                style: CustomThemes.poppinsBold.copyWith(
                    fontSize: Dimensions.fontSizeLarge,
                    color: ColorResource.white),
              ),
            ),
          ),
          const SizedBox(height: Dimensions.paddingSizeDefault),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Dépenses",
                      style: CustomThemes.poppinsSemiBold
                          .copyWith(fontSize: Dimensions.fontSizeLarge)),
                  CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.7,
                    center: const Text(
                      "70.0%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.purple,
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Revenus",
                      style: CustomThemes.poppinsSemiBold
                          .copyWith(fontSize: Dimensions.fontSizeLarge)),
                  CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.7,
                    center: const Text(
                      "70.0%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.purple,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    )));
  }
}
