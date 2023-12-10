import 'package:flutter/material.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';
import 'package:wang_hann_exhibition/widget/base_work.dart';
import 'package:wang_hann_exhibition/widget/padding_extension.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
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
          const BaseWork(
            route: '/TSITC',
            imageUrl: 'https://i.imgur.com/1EwMgSV.jpg',
            client: 'TSITC 台灣免疫暨腫瘤學會',
            event: '112年度 癌症治療解密研習班',
          ),
          const BaseWork(
            route: '/AbbVie',
            imageUrl: 'https://i.imgur.com/AyGbSq6.jpg',
            client: 'AbbVie 艾伯維藥品',
            event: '#2023 PSS治療注射工作坊',
          ),
          const BaseWork(
            route: '/Merck',
            imageUrl: 'https://i.imgur.com/h7FCNgn.png',
            client: 'Merck KGaA 默克',
            event: '默克中國海峽兩岸視訊連線 醫學教育直播',
          ),
          //FIXME: The image url is to be confirmed
          const BaseWork(
            route: '/TSITC',
            imageUrl: 'https://i.imgur.com/h7FCNgn.png',
            client: '外貿協會',
            event: 'xxx',
          ),
          const BaseWork(
            route: '/TSITC',
            imageUrl: 'https://i.imgur.com/EoxdRjD.jpg',
            client: '羅氏 x 資誠聯合會計師事務所',
            event: '台灣推行次世代基因定序檢測實驗室管理與給付政策之探討',
          ),
        ],
      ).whiteBackgroundPadding,
    );
  }
}
