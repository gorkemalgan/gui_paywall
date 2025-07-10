// Flutter imports:
import 'package:flutter/material.dart';

/// Simple video player widget placeholder
/// In a real implementation, you would use video_player package
class PaywallVideoPlayer extends StatelessWidget {
  final String? assetPath;
  final double? width;
  final double? height;

  const PaywallVideoPlayer({super.key, this.assetPath, this.width, this.height});

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    height: height,
    color: Colors.grey[800],
    child: assetPath != null
        ? Stack(
            alignment: Alignment.center,
            children: [
              // In a real implementation, this would be a video player
              // For now, show a placeholder
              const Icon(Icons.play_circle_outline, size: 64, color: Colors.white70),
              Positioned(
                bottom: 8,
                left: 8,
                right: 8,
                child: Text(
                  'Video: ${assetPath!.split('/').last}',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        : const Center(child: CircularProgressIndicator()),
  );
}
