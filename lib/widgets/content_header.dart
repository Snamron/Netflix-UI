import 'package:flutter/material.dart';
import 'package:netflix_ui/model/content_model.dart';
import 'package:netflix_ui/widgets/vertical_icon_button.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({Key? key, required this.featuredContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuredContent.imageUrl!),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl!),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: 'List',
                onTap: () {},
              ),
              const _PlayButton(),
              VerticalIconButton(
                icon: Icons.info_outline,
                title: 'Info',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.white,
      child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          size: 30,
          color: Colors.black,
        ),
        label: const Text(
          'Play',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
