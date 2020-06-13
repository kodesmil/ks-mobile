import 'package:flutter/cupertino.dart';
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
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: image,
          fit: BoxFit.cover,
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