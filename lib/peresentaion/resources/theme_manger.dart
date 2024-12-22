
import 'package:adv_app/peresentaion/resources/color_manger.dart';
import 'package:adv_app/peresentaion/resources/font_manger.dart';
import 'package:adv_app/peresentaion/resources/styles_manger.dart';
import 'package:adv_app/peresentaion/resources/values_manger.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors
    primaryColor: ColorManger.primary,
    primaryColorLight: ColorManger.lightprimary,
    primaryColorDark: ColorManger.darkprimary,
    disabledColor: ColorManger.grey1,
    splashColor: ColorManger.lightprimary, //ripple effect
    //card view theme
    cardTheme: CardTheme(
      color: ColorManger.white,
      shadowColor: ColorManger.grey,
      elevation: AppSize.s4,
    ),
    //appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManger.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManger.lightprimary,
      titleTextStyle: getRegularStyle(
        fontSize: FontSize.s16,
        color: ColorManger.white,
      ),
    ),
    //button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManger.grey1,
      buttonColor: ColorManger.white,
      splashColor: ColorManger.lightprimary,
    ),
    //elvated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManger.white, fontSize: FontSize.s17),
        backgroundColor: ColorManger.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
      ),
    ),
    //text theme
    textTheme: TextTheme(
      displayLarge:
          getSemiBoldStyle(color: ColorManger.darkGrey, fontSize: FontSize.s16),
      titleMedium:
          getmediumStyle(color: ColorManger.lightgrey, fontSize: FontSize.s14),
      bodySmall: getRegularStyle(
        color: ColorManger.grey1,
      ),
      bodyLarge: getRegularStyle(color: ColorManger.grey),
    ),
    //inpur decoration theme(text font field )
    inputDecorationTheme: InputDecorationTheme(
      //content padding
      contentPadding: const EdgeInsets.all(AppPaddig.p8),
      //hintstyle
      hintStyle:
          getRegularStyle(color: ColorManger.grey, fontSize: FontSize.s14),
      //labelStyle
      labelStyle:
          getmediumStyle(color: ColorManger.grey, fontSize: FontSize.s14),
      //error style
      errorStyle: getRegularStyle(
        color: ColorManger.error,
      ),
      //enabled border stle
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
          //foucsed border stle
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
          //error border style 
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
          //foucesd error border
          focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    ),
  );
}
