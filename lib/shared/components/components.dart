import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_cafe/shared/styles/colors.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChange,
  String? hint,
  Color? color,
  int? maxLines,
  VoidCallback? onTap,
  bool isPassword = false,
  String? Function(String?)? validate,
  String? label,
  IconData? prefix,
  IconData? suffix,
  double? height = 50,
  VoidCallback? suffixPressed,
  bool isClickable = true,
}) =>
    Container(
      height: height,
      width: .9.sw,
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        validator: validate,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0xffAAAAAA),
            fontSize: 16,
          ),
          labelStyle: TextStyle(
            color: Color(0xffAAAAAA),
          ),
          labelText: label,
          prefixIcon: Icon(
            prefix,
            color: color,
          ),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );
Widget myTitle({String? title, double? font, Color? color}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Text(
      title!,
      style: TextStyle(fontSize: font!, color: color),
    ),
  );
}

Widget mainBottom({double? width, double? height, String? title}) {
  return Container(
    height: height,
    width: width,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: color1),
    child: Center(
      child: Text(
        title!,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    ),
  );
}

class CustomisedAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget> actions;

  CustomisedAppBar({required this.title, required this.actions});

  @override
  Size get preferredSize => Size.fromHeight(0.11.sh);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title!,
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w100),
      ),
      // toolbarHeight: 0.12.sh,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(12),
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
      ),
      actions: actions,
      backgroundColor: Colors.white,
    );
  }
}

class DetailsField extends StatelessWidget {
  final String title;
  final IconData iconData;
  DetailsField({required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: title,
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              iconData,
              color: Color(0xff4CB379),
              size: 25,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 0.8, color: Colors.grey.shade200),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 0.8, color: Colors.grey.shade300),
            )),
      ),
    );
  }
}
