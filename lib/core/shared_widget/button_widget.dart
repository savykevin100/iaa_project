import 'package:iaa_project/export.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final Function? onTap;
  const ButtonWidget({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 45,
        decoration: const BoxDecoration(
          color: ColorResource.kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius)),
          //gradient: LinearGradient(colors: ColorResource.yellowButtonColor)
        ),
        child: Center(
          child: Text(
            title!,
            style: CustomThemes.poppinsBold.copyWith(
                fontSize: Dimensions.fontSizeLarge, color: ColorResource.white),
          ),
        ),
      ),
    );
  }
}
