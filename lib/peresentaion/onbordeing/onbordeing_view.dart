import 'dart:ui_web';

import 'package:adv_app/peresentaion/resources/assets_manger.dart';
import 'package:adv_app/peresentaion/resources/color_manger.dart';
import 'package:adv_app/peresentaion/resources/strings_manger.dart';
import 'package:adv_app/peresentaion/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;
  late final List<SliderObject> _list = _getSliderData();
  List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoadringTitle1, ImageAssets.onBoardingLogo1,
            AppStrings.onBoadringSubTitle1),
        SliderObject(AppStrings.onBoadringTitle2, ImageAssets.onBoardingLogo2,
            AppStrings.onBoadringSubTitle2),
        SliderObject(AppStrings.onBoadringTitle3, ImageAssets.onBoardingLogo3,
            AppStrings.onBoadringSubTitle3),
        SliderObject(AppStrings.onBoadringTitle4, ImageAssets.onBoardinglogo4,
            AppStrings.onBoadringSubTitle4),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManger.white,
            statusBarBrightness: Brightness.dark),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(_list[index]);
          }),
      bottomSheet: Container(
        color: ColorManger.white,
        height: AppSize.s100,
        child: Column(
          
          children:[
           
          
           
            Align(
              alignment: Alignment.centerRight,
              child: 
              TextButton(onPressed: () {},
               child:  const Text(AppStrings.skip,textAlign: TextAlign.end,)),
            ),
            _getBotomSheetWidget()
          ]
         
        ),
      ),
    );
  }
}
Widget _getBotomSheetWidget(){
   
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      
      //left arrow
      Padding(padding:  const EdgeInsets.all(AppPaddig.p14),
      child:GestureDetector(
        
        child: SizedBox(
          
          width: AppSize.s20,
          child: SvgPicture.asset(ImageAssets.leftArrowIc),
        ),
      ) ,
      ),
      
      Row(children: [
            for( int i = 0; i<_list.length; i++ )
            Padding(padding: const EdgeInsets.all(AppPaddig.p8),
            child: _getProperCircle(i),
            ),
          ],),
     

         //right arrow
          Padding(padding: const EdgeInsets.all(AppPaddig.p14),
      child:GestureDetector(
        child: SizedBox(
          width: AppSize.s20,
          child: SvgPicture.asset(ImageAssets.righArrowIc),
        ),
      ) ,
      ),
      
    ],
  );
}
Widget _getProperCircle(int index){
  if (index == _current ) {
    return SvgPicture.asset(ImageAssets.hollowCircleIc);
    
  }
}




class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  const OnBoardingPage(this._sliderObject, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPaddig.p8),
          child: Text(_sliderObject.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPaddig.p8),
          child: Text(_sliderObject.subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        const SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(_sliderObject.images)
      ],
    );
  }
}

class SliderObject {
  String title;
  String subtitle;
  String images;
  SliderObject(this.title, this.images, this.subtitle);
}
