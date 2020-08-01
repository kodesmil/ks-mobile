import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transparent_image/transparent_image.dart';

class KsCircleAvatar extends StatelessWidget {
  final double size;
  final String image;

  const KsCircleAvatar({Key key, this.size, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.35),
            spreadRadius: 0.35,
            blurRadius: 7.5,
          ),
        ],
      ),
      child: ClipOval(
        child: image?.isNotEmpty == true
            ? FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: image,
                fit: BoxFit.cover,
              )
            : SvgPicture.asset(
                'assets/images/avatar.svg',
              ),
      ),
    );
  }
}

class KsFadeInImage extends StatelessWidget {
  final double size;
  final String image;

  const KsFadeInImage({Key key, this.size, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: image,
        fit: BoxFit.cover,
      ),
    );
  }
}
