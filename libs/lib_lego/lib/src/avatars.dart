import 'package:flutter/material.dart';
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
      ),
      child: ClipOval(
        child: image?.isNotEmpty == true
            ? FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: image,
                fit: BoxFit.cover,
              )
            : Container(
                color: Colors.tealAccent.withOpacity(0.5),
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
