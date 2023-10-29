import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/CommonModels/pass_test_common_model.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/button_style.dart';

class passTestCommon extends StatelessWidget {
  const passTestCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => passTestCommonModel(),
      child: const subTestCommon(),
    );
  }
}

class subTestCommon extends StatelessWidget {
  const subTestCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Название теста",
                          style: textStyle.Subtitle,
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Samoe luchshee opisanie",
                          style: textStyle.SmallText,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Модуль",
                          style: textStyle.Subtitle,
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Samoe luchshee opisanie",
                          style: textStyle.SmallText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              const ListTest(),
              const Center(child: finishButton())
            ],
          ),
        ),
      )),
    );
  }
}

class ListTest extends StatelessWidget {
  const ListTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          right: 19.w,
        ),
        child: testItem(
          index: index,
        ),
      ),
    ));
  }
}

class testItem extends StatefulWidget {
  int index;
  testItem({super.key, required this.index});

  @override
  State<testItem> createState() => _testItemState();
}

class _testItemState extends State<testItem> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.index++;
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<passTestCommonModel>();
    return Container(
      decoration: boxStyle.questionItem,
      width: MediaQuery.of(context).size.width,
      height: 267.h,
      child: Padding(
        padding: EdgeInsets.only(left: 11.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            Text(
              "Вопрос ${widget.index}",
              style: textStyle.Header2,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Что появилось раньше курица или яйцо?",
              style: textStyle.SmallText,
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: Material(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: colorrs.primary600,
                        checkColor: Colors.white,
                        value: model.firstCheck,
                        onChanged: (val) => model.setFirstCheck()),
                  ),
                ),
                const Text("Create"),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: Material(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: colorrs.primary600,
                        checkColor: Colors.white,
                        value: model.secondCheck,
                        onChanged: (val) => model.setSecondCheck()),
                  ),
                ),
                const Text("Read"),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: Material(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: colorrs.primary600,
                        checkColor: Colors.white,
                        value: model.thirdCheck,
                        onChanged: (val) => model.setThirdCheck()),
                  ),
                ),
                const Text("Update"),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: Material(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: colorrs.primary600,
                        checkColor: Colors.white,
                        value: model.fourCheck,
                        onChanged: (val) => model.setFourCheck()),
                  ),
                ),
                const Text("Delete"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class finishButton extends StatelessWidget {
  const finishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h, bottom: 24.h),
      child: SizedBox(
          width: 207.w,
          height: 46.h,
          child: ElevatedButton(
            style: buttonStyle.Default,
            onPressed: () {},
            child: Text(
              "Завершить",
              style: textStyle.SmallButtonText,
            ),
          )),
    );
  }
}
