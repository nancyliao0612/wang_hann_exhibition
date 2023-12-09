import 'package:flutter/material.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';
import 'package:wang_hann_exhibition/widget/padding_extension.dart';
import 'package:gap/gap.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'WHAT WE DO',
                  style: UITextStyle.h3.copyWith(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const Gap(36),
            service('Brand Development And Promotion', '品牌發展與推廣'),
            const Gap(16),
            service('PR and Influence', '公關與影響力'),
            const Gap(16),
            service('Medical Education', '醫學教育活動及會議'),
            const Gap(16),
            service('Data, Intelligence and Strategy', '數據、情報與策略'),
            const Gap(16),
            service('Experience and Innovation', '生醫新創公司'),
            const Gap(16),
            service('Market Access And Payer', '產品上市、市場准入活動'),
            const Gap(48),
          ],
        ).blackBackgroundPadding
      ],
    );
  }
}

Widget service(serviceItemInEnglish, serviceItemInChinese) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        serviceItemInEnglish,
        style: UITextStyle.title1.copyWith(
          color: Colors.white,
        ),
      ),
      Text(
        serviceItemInChinese,
        style: UITextStyle.title1.copyWith(
          color: Colors.white.withOpacity(0.5),
        ),
      )
    ],
  );
}
