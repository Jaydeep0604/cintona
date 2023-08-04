import 'package:cintona/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditText extends StatefulWidget {
  TextInputType? textInputType;
  String? hint;

  String? name;
  int? maxLength;
  String? Function(String?)? validator;
  TextInputAction? textInputAction;
  void Function()? onEditingComplete;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool obsecureText;
  bool readOnly;
  bool enabled;

  TextEditingController? controller;
  List<TextInputFormatter>? inputformtters;
  bool autoFoucs;

  EditText(
      {this.textInputType,
      this.obsecureText = false,
      this.readOnly = false,
      this.suffixIcon,
      this.prefixIcon,
      this.hint,
      this.name,
      this.textInputAction,
      this.validator,
      this.controller,
      this.inputformtters,
      this.enabled = true,
      this.maxLength,
      this.onEditingComplete,
      this.autoFoucs = false,
      Key? key})
      : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        onEditingComplete: widget.onEditingComplete,
        textInputAction: widget.textInputAction,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: widget.textInputType,
        obscureText: widget.obsecureText,
        readOnly: widget.readOnly,
        cursorColor: AppColors.blackColor,
        inputFormatters: widget.inputformtters,
        enabled: widget.enabled,
        maxLength: widget.maxLength,
        autofocus: widget.autoFoucs,
        toolbarOptions: ToolbarOptions(
          copy: true,
          cut: true,
          paste: false,
          selectAll: false,
        ),
        style: TextStyle(
          fontSize: 14, //fontFamily: KSMFontFamily.robotoRgular
        ),
        decoration: InputDecoration(
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            errorStyle: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Colors.red),
            helperStyle: Theme.of(context).textTheme.subtitle1,
            hintStyle: Theme.of(context).textTheme.caption,
            hintText: widget.hint,
            filled: true,
            fillColor: AppColors.whiteColor,
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            label: widget.name != null ? Text(widget.name ?? "") : null,
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: AppColors.whiteColor)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: AppColors.whiteColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: AppColors.whiteColor)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: AppColors.whiteColor)
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: AppColors.whiteColor)
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: AppColors.whiteColor)
            )),
      ),
    );
  }
}
