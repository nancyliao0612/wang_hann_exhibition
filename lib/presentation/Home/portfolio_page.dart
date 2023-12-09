import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wang_hann_exhibition/app_ui/color/wang_hann_color.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';
import 'package:wang_hann_exhibition/widget/padding_extension.dart';
import 'package:gap/gap.dart';
import 'package:themed/themed.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 930),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'OUR WORKS',
                style: UITextStyle.h3,
              )
            ],
          ),
          const Work(
            imageUrl: 'https://i.imgur.com/1EwMgSV.jpg',
            client: 'TSITC 台灣免疫暨腫瘤學會',
            event: '112年度 癌症治療解密研習班',
          ),
          const Work(
            imageUrl: 'https://i.imgur.com/AyGbSq6.jpg',
            client: 'AbbVie 艾伯維藥品',
            event: '#2023 PSS治療注射工作坊',
          ),
          const Work(
            imageUrl: 'https://i.imgur.com/h7FCNgn.png',
            client: 'Merck KGaA 默克',
            event: '默克中國海峽兩岸視訊連線 醫學教育直播',
          ),
          //FIXME: The image url is to be confirmed
          const Work(
            imageUrl: 'https://i.imgur.com/h7FCNgn.png',
            client: '外貿協會',
            event: 'xxx',
          ),
          const Work(
            imageUrl: 'https://i.imgur.com/EoxdRjD.jpg',
            client: '羅氏 x 資誠聯合會計師事務所',
            event: '台灣推行次世代基因定序檢測實驗室管理與給付政策之探討',
          ),
        ],
      ).whiteBackgroundPadding,
    );
  }
}

class Work extends StatefulWidget {
  const Work({
    required this.imageUrl,
    required this.client,
    required this.event,
    super.key,
  });

  final String imageUrl;
  final String client;
  final String event;

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(36),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/TSITC');
          },
          onHover: (hover) {
            setState(() {
              isHover = hover;
            });
          },
          child: ChangeColors(
            saturation: isHover ? 0 : -1,
            hue: isHover ? 0 : -1,
            brightness: isHover ? 0 : -0.05,
            child: CachedNetworkImage(
              imageUrl: widget.imageUrl,
            ),
          ),
        ),
        const Gap(8),
        Text(
          widget.client,
          style: UITextStyle.title1.copyWith(
            color: WangHannColor.black,
          ),
        ),
        Text(
          widget.event,
          style: UITextStyle.caption.copyWith(
            color: WangHannColor.black,
          ),
        )
      ],
    );
  }
}
