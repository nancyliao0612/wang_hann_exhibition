import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_ui/typography/app_text_style.dart';
import 'package:flutter_application_1/widget/padding_extension.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';

class WhatTheySay extends StatefulWidget {
  const WhatTheySay({super.key});

  @override
  State<WhatTheySay> createState() => _WhatTheySayState();
}

class _WhatTheySayState extends State<WhatTheySay> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      ContentConfig(
        title: 'WHAT THEY SAY',
        styleTitle: UITextStyle.h3.copyWith(color: Colors.white),
        textAlignTitle: TextAlign.left,
        marginTitle: EdgeInsets.zero,
        widgetDescription: testimony(
          "首次與汪翰生醫策展團隊合作，充分感受到熱情、熟稔又兼具創新的特質，著實讓活動增色不少，也能依照需求適時配合調整，是個讓人放心合作的好Partner!",
          "中華民國對外貿易發展協會 展覽業務處",
        ),
        marginDescription: EdgeInsets.zero,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: 'WHAT THEY SAY',
        description:
            "首次與汪翰生醫策展團隊合作，充分感受到熱情、熟稔又兼具創新的特質，著實讓活動增色不少，也能依照需求適時配合調整，是個讓人放心合作的好Partner!",
        backgroundColor: Color(0xFF202020),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: 'WHAT THEY SAY',
        description:
            "首次與汪翰生醫策展團隊合作，充分感受到熱情、熟稔又兼具創新的特質，著實讓活動增色不少，也能依照需求適時配合調整，是個讓人放心合作的好Partner!",
        backgroundColor: Color(0xFF202020),
      ),
    );
  }

  void onDonePress() {
    // log("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 336,
      child: IntroSlider(
        key: UniqueKey(),
        listContentConfig: listContentConfig,
        isShowSkipBtn: false,
        isShowNextBtn: false,
        indicatorConfig: IndicatorConfig(
            // indicatorWidget:
            ),
        onDonePress: onDonePress,
      ),
    ).blackBackgroundPadding;
  }
}

Widget testimony(String content, String source) {
  return Column(
    children: [
      const Gap(36),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '“',
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                height: 0.8,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          Text(
            content,
            style: UITextStyle.body1.copyWith(color: Colors.white),
          )
        ],
      ),
      const Gap(24),
      const SizedBox(
        width: 44,
        child: Divider(color: Colors.white),
      ),
      const Gap(24),
      Align(
        alignment: Alignment.topRight,
        child: Text(
          source,
          style: UITextStyle.body1.copyWith(color: Colors.white),
        ),
      )
    ],
  );
}
