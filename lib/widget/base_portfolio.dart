import 'package:flutter/material.dart';
import 'package:wang_hann_exhibition/app_ui/color/wang_hann_color.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';
import 'package:wang_hann_exhibition/presentation/Home/footer.dart';
import 'package:wang_hann_exhibition/widget/base_work.dart';
import 'package:wang_hann_exhibition/widget/padding_extension.dart';

class BasePortfolio extends StatelessWidget {
  const BasePortfolio({
    required this.content,
    required this.nextOrganization,
    required this.nextImageUrl,
    required this.nextWorkshop,
    super.key,
  });

  final Widget content;
  final String nextOrganization;
  final String nextImageUrl;
  final String nextWorkshop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            content.portfolioBlackBackgroundPadding,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SEE OTHER WORKS',
                  style: UITextStyle.h3.copyWith(
                    color: WangHannColor.black,
                  ),
                ),
                const BaseWork(
                  route: '/AbbVie',
                  imageUrl: 'https://i.imgur.com/AyGbSq6.jpg',
                  client: 'AbbVie 艾伯維藥品',
                  event: '#2023 PSS治療注射工作坊',
                ),
              ],
            ).whiteBackgroundPadding,
            const Footer(),
          ],
        ),
      ),
    );
  }
}
