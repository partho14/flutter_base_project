import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReusableVideoPlayer extends StatefulWidget {
  final String videoUrl;

  const ReusableVideoPlayer({super.key, required this.videoUrl});

  @override
  State<ReusableVideoPlayer> createState() => _ReusableVideoPlayerState();
}

class _ReusableVideoPlayerState extends State<ReusableVideoPlayer> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {
          double aspectRatio = _controller.value.aspectRatio;
          _chewieController = ChewieController(
            videoPlayerController: _controller,
            autoPlay: true,
            looping: false,
            showControls: true,
            aspectRatio: aspectRatio,
            allowFullScreen: true,
            hideControlsTimer: const Duration(milliseconds: 1200),
            materialProgressColors: ChewieProgressColors(
              playedColor: Colors.blue,
              handleColor: Colors.blue,
              bufferedColor: Colors.grey,
              backgroundColor: Colors.grey,
            ),
          );
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Chewie(
            controller: _chewieController,
          )
        : const Center(child: CupertinoActivityIndicator());
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
