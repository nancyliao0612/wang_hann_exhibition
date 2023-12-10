import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:video_player/video_player.dart';
import 'package:wang_hann_exhibition/app_ui/color/wang_hann_color.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';
import 'package:wang_hann_exhibition/widget/base_portfolio.dart';

class MerckPortfolio extends StatefulWidget {
  const MerckPortfolio({super.key});

  @override
  State<MerckPortfolio> createState() => _MerckPortfolioState();
}

class _MerckPortfolioState extends State<MerckPortfolio> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://player.vimeo.com/video/892990526?h=4a681a0677'))
      // Uri.parse(
      //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return BasePortfolio(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Merck KGaA 默克',
                style: UITextStyle.h2.copyWith(
                  color: WangHannColor.white,
                ),
              ),
              Text(
                '默克中國海峽兩岸視訊連線 醫學教育直播',
                style: UITextStyle.title1.copyWith(
                  color: WangHannColor.white,
                ),
              ),
              //FIXME
              Text(
                '2023 ??',
                style: UITextStyle.title1.copyWith(
                  color: WangHannColor.grey,
                ),
              ),
            ],
          ),
          const Gap(36),
          Row(
            children: [
              Expanded(
                child: Text(
                  '默克集團邀請台大醫院婦產部醫師專家\n針對低反應及高齡族群拮抗劑鮮胚移植的跨國經驗分享\n透過一系列透過專家對對談和辯論，協助 IVF 專家判斷使用拮抗劑最好的使用時機和劑量，達到對個案最好的處置',
                  style: UITextStyle.body1.copyWith(
                    color: WangHannColor.white,
                  ),
                ),
              ),
            ],
          ),
          const Gap(36),
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
        ],
      ),
      nextOrganization: 'Merck KGaA 默克',
      nextImageUrl: 'https://i.imgur.com/h7FCNgn.png',
      nextWorkshop: '默克中國海峽兩岸視訊連線 醫學教育直播',
    );
  }
}
