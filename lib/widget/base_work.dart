import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:themed/themed.dart';
import 'package:wang_hann_exhibition/app_ui/color/wang_hann_color.dart';
import 'package:wang_hann_exhibition/app_ui/typography/app_text_style.dart';

class BaseWork extends StatefulWidget {
  const BaseWork({
    required this.route,
    required this.imageUrl,
    required this.client,
    required this.event,
    super.key,
  });

  final String route;
  final String imageUrl;
  final String client;
  final String event;

  @override
  State<BaseWork> createState() => _BaseWorkState();
}

class _BaseWorkState extends State<BaseWork> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(36),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(widget.route);
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
