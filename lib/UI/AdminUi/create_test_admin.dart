import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:snippett/Domain/Models/AdminModels/create_test_model_admin.dart';
import 'package:snippett/Style/box_decoration_style.dart';
import 'package:snippett/Style/colors.dart';
import 'package:snippett/Style/text_style.dart';
import 'package:snippett/Style/button_style.dart';

class CreateTestAdmin extends StatelessWidget {
  const CreateTestAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateTestAdminModel(),
      child: const SubCreateTestAdmin(),
    );
  }
}

class SubCreateTestAdmin extends StatelessWidget {
  const SubCreateTestAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 83.h,
                ),
                Text(
                  "Добавление теста",
                  style: textStyle.Header2,
                ),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  "Название",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 14.h,
                ),
                const nameTextField(),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  "Модуль",
                  style: textStyle.Subtitle,
                ),
                SizedBox(
                  height: 14.h,
                ),
                const moduleTextField(),
                SizedBox(
                  height: 28.h,
                ),
                const ListQuestion(),
                const Center(child: addTestButton()),
                const Center(child: createTest()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListQuestion extends StatelessWidget {
  const ListQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: ((context, index) => Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: ElementQuestion(
                  index: index,
                ),
              ))),
    );
  }
}

class ElementQuestion extends StatelessWidget {
  int index;
  ElementQuestion({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxStyle.questionItem,
      width: MediaQuery.of(context).size.width,
      height: 600.h,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            Text(
              "Вопрос ${++index}",
              style: textStyle.Header2,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Описание",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const descriptionTextField(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Баллы",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const ballsTextField(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Вариант 1",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const firstVariantTextField(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Вариант 2",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const secondVariantTextField(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Вариант 3",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const thirdVariantTextField(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Вариант 4",
              style: textStyle.Subtitle,
            ),
            SizedBox(
              height: 14.h,
            ),
            const fourVariantTextField(),
          ],
        ),
      ),
    );
  }
}

class nameTextField extends StatelessWidget {
  const nameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 354.w,
        height: 40.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.name = value,
          placeholder: "Заполните поле",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class moduleTextField extends StatelessWidget {
  const moduleTextField({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sexList = ["Сварщик"];
    final dropValue = ValueNotifier('');
    final model = context.watch<CreateTestAdminModel>();
    return Center(
        child: SizedBox(
      width: 355.w,
      height: 50.h,
      child: Material(
        child: ValueListenableBuilder(
            valueListenable: dropValue,
            builder: (BuildContext context, String value, _) {
              return DropdownButtonFormField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15.0),
                  fillColor: colorrs.neutral0,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: colorrs.neutral0, width: 0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: colorrs.neutral0, width: 0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: colorrs.neutral0, width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: colorrs.neutral300, width: 0)),
                ),
                isExpanded: true,
                hint: Text(
                  'Выберите пункт',
                  style: textStyle.SmallText,
                ),
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                value: (value.isEmpty) ? null : value,
                onChanged: (choice) {
                  dropValue.value = choice.toString();
                },
                items: sexList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
              );
            }),
      ),
    ));
  }
}

class descriptionTextField extends StatelessWidget {
  const descriptionTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
        height: 40.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.description = value,
          placeholder: "Заполните поле",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class ballsTextField extends StatelessWidget {
  const ballsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
        height: 40.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.score = int.parse(value),
          placeholder: "Введите количество",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class firstVariantTextField extends StatelessWidget {
  const firstVariantTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
        height: 40.h,
        child: CupertinoTextField(
          suffix: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 19.w,
            ),
            child: GestureDetector(
                onTap: () => model.Check(0),
                child: model.firstCheckValide
                    ? ImageIcon(
                        const AssetImage("assets/image/CheckCircle.png"),
                        color: Colors.green[600],
                      )
                    : const ImageIcon(
                        AssetImage("assets/image/CheckCircle.png"),
                        color: colorrs.neutral300,
                      )),
          ),
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.a = value,
          placeholder: "Заполните поле",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class secondVariantTextField extends StatelessWidget {
  const secondVariantTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
        height: 40.h,
        child: CupertinoTextField(
          suffix: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 19.w,
            ),
            child: GestureDetector(
                onTap: () => model.Check(1),
                child: model.secondCheckValide
                    ? ImageIcon(
                        const AssetImage("assets/image/CheckCircle.png"),
                        color: Colors.green[600],
                      )
                    : const ImageIcon(
                        AssetImage("assets/image/CheckCircle.png"),
                        color: colorrs.neutral300,
                      )),
          ),
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.b = value,
          placeholder: "Заполните поле",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class thirdVariantTextField extends StatelessWidget {
  const thirdVariantTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
        height: 40.h,
        child: CupertinoTextField(
          suffix: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 19.w,
            ),
            child: GestureDetector(
                onTap: () => model.Check(2),
                child: model.thirdCheckValide
                    ? ImageIcon(
                        const AssetImage("assets/image/CheckCircle.png"),
                        color: Colors.green[600],
                      )
                    : const ImageIcon(
                        AssetImage("assets/image/CheckCircle.png"),
                        color: colorrs.neutral300,
                      )),
          ),
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.c = value,
          placeholder: "Заполните поле",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class fourVariantTextField extends StatelessWidget {
  const fourVariantTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Center(
      child: SizedBox(
        width: 300.w,
        height: 40.h,
        child: CupertinoTextField(
          suffix: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 19.w,
            ),
            child: GestureDetector(
                onTap: () => model.Check(3),
                child: model.fourCheckValide
                    ? ImageIcon(
                        const AssetImage("assets/image/CheckCircle.png"),
                        color: Colors.green[600],
                      )
                    : const ImageIcon(
                        AssetImage("assets/image/CheckCircle.png"),
                        color: colorrs.neutral300,
                      )),
          ),
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          onChanged: (value) => model.d = value,
          placeholder: "Заполните поле",
          placeholderStyle: textStyle.fieldText,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class addTestButton extends StatelessWidget {
  const addTestButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Padding(
      padding: EdgeInsets.only(
        top: 28.h,
      ),
      child: SizedBox(
          width: 207.w,
          height: 46.h,
          child: ElevatedButton(
            style: buttonStyle.Default,
            onPressed: () {},
            child: Text(
              "Добавить вопрос",
              style: textStyle.SmallButtonText,
            ),
          )),
    );
  }
}

class createTest extends StatelessWidget {
  const createTest({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CreateTestAdminModel>();
    return Padding(
      padding: EdgeInsets.only(top: 28.h, bottom: 24.h),
      child: SizedBox(
          width: 207.w,
          height: 46.h,
          child: ElevatedButton(
            style: buttonStyle.Default,
            onPressed: () => model.createTest(
                model.name,
                model.moduleName,
                model.description,
                model.score,
                model.correct,
                model.a,
                model.b,
                model.c,
                model.d),
            child: Text(
              "Создать тест",
              style: textStyle.SmallButtonText,
            ),
          )),
    );
  }
}
