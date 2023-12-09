import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:wang_hann_exhibition/app_ui/color/wang_hann_color.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';
import 'package:wang_hann_exhibition/constant/icon_path.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: WangHannColor.black.withOpacity(0.75),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //FIXME: links are to be confirmed
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wanghann Healthcare Agency',
                  style: UITextStyle.title1.copyWith(
                    color: WangHannColor.white,
                  ),
                ),
                Text(
                  '汪翰生醫策展',
                  style: UITextStyle.title1.copyWith(
                    color: WangHannColor.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wanghann Precision Medicine Co., Ltd. Taiwan',
                  style: UITextStyle.title1.copyWith(
                    color: WangHannColor.white,
                  ),
                ),
                Text(
                  '汪翰精準生醫',
                  style: UITextStyle.title1.copyWith(
                    color: WangHannColor.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            const Gap(70),

            Row(
              children: [
                IconButton(
                  onPressed: () {
                    html.window.open(
                      'https://www.instagram.com/23_synergy/?hl=en',
                      'new tab',
                    );
                  },
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(IconPath.medium),
                ),
                const Gap(24),
                IconButton(
                  onPressed: () {
                    html.window.open(
                      'https://www.instagram.com/23_synergy/?hl=en',
                      'new tab',
                    );
                  },
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(IconPath.instagram),
                ),
                const Gap(24),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(IconPath.youtube),
                )
              ],
            ),
            const Gap(24),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '+886-932-842828',
                  style:
                      UITextStyle.caption.copyWith(color: WangHannColor.white),
                ),
                Text(
                  'scott.li@wanghann.com',
                  style:
                      UITextStyle.caption.copyWith(color: WangHannColor.white),
                ),
              ],
            ),

            const Gap(24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: UITextStyle.caption.copyWith(
                    color: WangHannColor.white,
                    decoration: TextDecoration.underline,
                    decorationColor: WangHannColor.white,
                  ),
                ),
                Text(
                  ' ',
                  style:
                      UITextStyle.caption.copyWith(color: WangHannColor.white),
                ),
                Text(
                  '© ${DateTime.now().year} Healthcare Agency. All rights reserved',
                  style:
                      UITextStyle.caption.copyWith(color: WangHannColor.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
