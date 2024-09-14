import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:verticalvideos/config/helpers/formater_data.dart';
import 'package:verticalvideos/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost viedo;
  const VideoButtons({
    super.key,
    required this.viedo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          iconData: Icons.favorite,
          color: Colors.red,
          value: viedo.likes,
          onPressed: null,
        ),
        _CustomIconButton(
          iconData: Icons.remove_red_eye_outlined,
          value: viedo.views,
          onPressed: null,
        ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(
            iconData: Icons.play_circle_outline_rounded,
            value: 0,
            onPressed: null,
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final Color? color;
  final IconData iconData;
  final VoidCallback? onPressed;
  const _CustomIconButton({
    required this.value,
    required this.iconData,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final visualValue = FormaterData.formatetData(value.toDouble());
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            iconData,
            color: color ?? Colors.white,
          ),
        ),
        if (value > 0)
          Text(
            visualValue,
            style: const TextStyle(fontSize: 15),
          )
      ],
    );
  }
}
