// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

enum ImageTransition { slide, carousel }

/// Image gallery widget to replace ImageGalleryCard
class PaywallImageGallery extends StatelessWidget {
  final List<String> imagePaths;
  final double? height;
  final double? width;
  final bool isSlider;
  final ImageTransition transition;

  const PaywallImageGallery({
    super.key,
    required this.imagePaths,
    this.height,
    this.width,
    this.isSlider = true,
    this.transition = ImageTransition.carousel,
  });

  factory PaywallImageGallery.slider(List<String> imagePaths, {String? dirPath, ImageTransition transition = ImageTransition.slide}) {
    final paths = dirPath != null ? imagePaths.map((path) => '$dirPath$path').toList() : imagePaths;
    return PaywallImageGallery(imagePaths: paths, isSlider: true, transition: transition);
  }

  @override
  Widget build(BuildContext context) {
    if (imagePaths.isEmpty) return const SizedBox.shrink();

    if (!isSlider || imagePaths.length == 1) {
      return _buildSingleImage(imagePaths.first);
    }

    if (transition == ImageTransition.slide && imagePaths.length == 2) {
      return ImageSlider(imagePath1: imagePaths[0], imagePath2: imagePaths[1], height: height, width: width);
    }

    return CarouselSlider(
      items: imagePaths.map((path) => _buildSingleImage(path)).toList(),
      options: CarouselOptions(
        height: height,
        viewportFraction: 0.9,
        enableInfiniteScroll: imagePaths.length > 1,
        autoPlay: imagePaths.length > 1,
        autoPlayInterval: const Duration(seconds: 3),
      ),
    );
  }

  Widget _buildSingleImage(String path) {
    if (path.endsWith('.mp4') || path.endsWith('.mov')) {
      // For video files, show a placeholder
      return Container(
        width: width,
        height: height,
        color: Colors.grey[800],
        child: const Center(child: Icon(Icons.play_circle_outline, size: 48, color: Colors.white)),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        path,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: width,
          height: height,
          color: Colors.grey[800],
          child: const Icon(Icons.image_not_supported, color: Colors.white),
        ),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  final String imagePath1;
  final String imagePath2;
  final double? height;
  final double? width;

  const ImageSlider({super.key, required this.imagePath1, required this.imagePath2, this.height, this.width});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 4000), vsync: this)
      ..repeat()
      ..addListener(() {
        setState(() {});
      });

    _animation = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 0.8).chain(CurveTween(curve: Curves.ease)), weight: 40),
      TweenSequenceItem<double>(tween: ConstantTween<double>(0.8), weight: 15),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.8, end: 0.0).chain(CurveTween(curve: Curves.ease)), weight: 40),
      TweenSequenceItem<double>(tween: ConstantTween<double>(0.0), weight: 15),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final effectiveWidth = widget.width ?? constraints.maxWidth;
      final effectiveHeight = widget.height ?? constraints.maxHeight;

      return SizedBox(
        width: effectiveWidth,
        height: effectiveHeight,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  widget.imagePath2,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey[800],
                    child: const Icon(Icons.image_not_supported, color: Colors.white),
                  ),
                ),
              ),
            ),
            ClipRect(
              child: Align(
                alignment: Alignment.centerLeft,
                widthFactor: _animation.value,
                child: SizedBox(
                  width: effectiveWidth,
                  height: effectiveHeight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      widget.imagePath1,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[800],
                        child: const Icon(Icons.image_not_supported, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: effectiveWidth * _animation.value - 0.5,
              child: Container(width: 1, height: effectiveHeight, color: Colors.white),
            ),
          ],
        ),
      );
    },
  );
}
