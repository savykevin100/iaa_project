import 'package:iaa_project/export.dart';

class TextFieldCustom extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmit;
  final ValueChanged<String>? onChange;
  final String? hintText;
  final String? helperText;
  final TextStyle? style;
  final int? maxLines;
  final GestureTapCallback? onTapSuffixIcon;
  final GestureTapCallback? onTapPrefixIcon;
  final IconData? suffixIconData;
  final IconData? prefixIconData;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Color? hintTextColor;
  final Color? borderColor;
  final Color? cursorColor;
  final Color? textColor;
  final Color? prefixIconColor;
  final bool? enabled;
  final int? maxLength;
  final bool? readOnly;
  final bool? isCircle;
  final EdgeInsets? padding;
  final Color? suffixIconColor;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final InputDecoration? decoration;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autofocus;

  // ignore: use_key_in_widget_constructors
  const TextFieldCustom({
    this.title,
    this.enabled = true,
    this.readOnly = false,
    this.controller,
    this.maxLines = 1,
    this.validator,
    this.style,
    this.maxLength,
    this.onFieldSubmit,
    this.textInputAction = TextInputAction.done,
    this.onChange,
    this.hintText,
    this.helperText,
    this.onTapSuffixIcon,
    this.suffixIconData,
    this.prefixIconData,
    this.onTapPrefixIcon,
    this.focusNode,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    this.hintTextColor = const Color(0xff8A8A8A),
    this.cursorColor = ColorResource.kPrimaryColor,
    this.borderColor = ColorResource.kPrimaryColor,
    this.textColor = Colors.white,
    this.prefixIconColor = Colors.white,
    this.suffixIconColor = Colors.white,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.isCircle = true,
    this.inputFormatters,
    this.decoration,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        enabled: enabled,
        readOnly: readOnly!,
        inputFormatters: inputFormatters,
        focusNode: focusNode,
        validator: validator,
        keyboardType: keyboardType,
        cursorWidth: 1,
        maxLines: maxLines,
        obscureText: obscureText!,
        cursorColor: cursorColor,
        autofocus: autofocus!,
        textInputAction: textInputAction,
        maxLength: maxLength,
        controller: controller,
        style: style ??
            CustomThemes.poppinsSemiBold.copyWith(
                color: ColorResource.kPrimaryColor,
                fontSize: Dimensions.fontSizeExtraLarge),
        onFieldSubmitted: onFieldSubmit,
        onChanged: onChange,
        decoration: decoration ??
            InputDecoration(
                labelText: title,
                labelStyle: CustomThemes.poppinsRegular.copyWith(
                    color: ColorResource.kPrimaryColor,
                    fontSize: Dimensions.fontSizeDefault),
                hintText: hintText,
                hintStyle: CustomThemes.poppinsRegular.copyWith(
                    color: ColorResource.kPrimaryColor,
                    fontSize:
                        Dimensions.fontSizeDefault), //const Color(0xff8A8A8A)),
                helperText: helperText,
                helperMaxLines: 3,
                helperStyle:
                    const TextStyle(color: ColorResource.black, fontSize: 15),
                contentPadding: padding,
                suffixIcon: suffixIconData == null
                    ? null
                    : GestureDetector(
                        onTap: onTapSuffixIcon,
                        child: Icon(
                          suffixIconData,
                          color: suffixIconColor,
                          size: 20,
                        )),
                filled: true,
                fillColor: ColorResource.backgroundScaffoldColor,
                prefixIcon: prefixIconData == null
                    ? null
                    : GestureDetector(
                        onTap: onTapPrefixIcon,
                        child: Icon(
                          prefixIconData,
                          color: prefixIconColor,
                          size: 20,
                        )),
                focusedBorder: isCircle!
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimensions.radius),
                        borderSide: BorderSide(color: borderColor!))
                    : UnderlineInputBorder(
                        borderSide: BorderSide(color: borderColor!)),
                focusedErrorBorder: isCircle!
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimensions.radius),
                        borderSide: BorderSide(color: borderColor!))
                    : UnderlineInputBorder(
                        borderSide: BorderSide(color: borderColor!)),
                enabledBorder: isCircle!
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimensions.radius),
                        borderSide: BorderSide(color: borderColor!))
                    : UnderlineInputBorder(
                        borderSide: BorderSide(color: borderColor!)),
                errorBorder: isCircle!
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimensions.radius),
                        borderSide: const BorderSide(color: Colors.red))
                    : const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                    borderSide: BorderSide.none)));
  }
}
