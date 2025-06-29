
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/res/colors/colors.dart';


class InternetExceptionsWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionsWidget({super.key,required this.onPress});

  @override
  State<InternetExceptionsWidget> createState() => _InternetExceptionsWidgetState();
}

class _InternetExceptionsWidgetState extends State<InternetExceptionsWidget> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: height * .15,),
            Icon(Icons.cloud_off, color: AppColor.redColor,size: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(child: Text('internet_exception'.tr,textAlign: TextAlign.center,)),
            ),
            SizedBox(height: height * .15,),
            InkWell(
              onTap: widget.onPress,
              child: Container(
                height: 44,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.primaryColor
                ),
                child: Center(child: Text('retry'.tr,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),)),
              ),
            )

          ],
        ),

    );
  }
}
