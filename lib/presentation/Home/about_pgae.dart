import 'package:flutter/material.dart';
import 'package:wang_hann_exhibition/app_ui/color/wang_hann_color.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';
import 'package:wang_hann_exhibition/constant/image_path.dart';
import 'package:wang_hann_exhibition/widget/padding_extension.dart';
import 'package:gap/gap.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'ABOUT WANG HANN',
              style: UITextStyle.h3.copyWith(color: Colors.white),
            )
          ],
        ),
        const Gap(36),
        ClipOval(
          child: Image.asset(
            ImagePath.avatar,
            width: 155,
          ),
        ),
        const Gap(36),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '李明翰',
                  style: UITextStyle.body1.copyWith(color: WangHannColor.white),
                ),
                const Gap(10),
                Text(
                  '汪翰生醫策展/精準生醫創辦人兼執行長​',
                  style:
                      UITextStyle.caption.copyWith(color: WangHannColor.white),
                ),
              ],
            ),
            emptyLine(),
            Text(
              '曾任職於鴻海健康醫療事業群，並協助建立亞洲首家生醫新創加速器 H.Spectrum，宗旨為媒合創業團隊與醫療院所、國際藥廠、科研團隊合作，並以實現精準醫療、改善患者健康為使命​。​',
              style: UITextStyle.caption.copyWith(color: WangHannColor.white),
            ),
            emptyLine(),
            Text(
              '加入以色列投資人 Nissim Darvish 共同組建全新創投團隊 ENV Ventures，並擔任 Venture Partner。ENV 是一家醫療生技創新基金，旨在投資歐洲和以色列的高影響力、高回報的生物技術、醫療技術和健康新創公司。​',
              style: UITextStyle.caption.copyWith(color: WangHannColor.white),
            ),
            emptyLine(),
            Text(
              'Lee Ming Han is the founder and CEO of Wanghann Precision Medicine, worked at the field of investment with the large enterprise, Foxconn, for six years. He created H.Spectrum, Asia’s leading startup accelerator, aligned emerging startups with corporate development teams. He has rich experiences to partner with global groups like Bayer and Merck KGaA.',
              style: UITextStyle.caption.copyWith(color: WangHannColor.white),
            ),
          ],
        )
      ],
    ).blackBackgroundPadding;
  }
}

Widget emptyLine() {
  return Text(
    '',
    style: UITextStyle.caption.copyWith(color: WangHannColor.white),
  );
}
