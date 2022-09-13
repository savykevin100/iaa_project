import 'package:iaa_project/export.dart';

class RoundedIcon extends StatelessWidget {
  final String? imgPath;
  final Function? onTap;
  //const RoundedIcon({Key? key, this.imgPath, this.onTap}) : super(key: key);
    const RoundedIcon({Key? key, this.imgPath, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorResource.kPrimaryColor)
            //gradient: LinearGradient(colors: ColorResource.yellowButtonColor)
            //),
      ),
    );
  }
}
