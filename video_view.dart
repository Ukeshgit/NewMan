// VideoChatView widget handles the video display and user selection
import 'package:flutter/material.dart';
import 'package:flutter_zoom_videosdk/native/zoom_videosdk.dart';
import 'package:flutter_zoom_videosdk/native/zoom_videosdk_user.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VideoChatView extends HookWidget {
  final ZoomVideoSdkUser? fullScreenUser;
  final ZoomVideoSdkUser? sharingUser;
  final List<ZoomVideoSdkUser> users;
  final Function(ZoomVideoSdkUser) onUserSelected;

  const VideoChatView({
    Key? key,
    required this.fullScreenUser,
    required this.sharingUser,
    required this.users,
    required this.onUserSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opacityLevel = useState<double>(1.0);

    final fullScreenView = AnimatedOpacity(
      opacity: opacityLevel.value,
      duration: const Duration(seconds: 3),
      child: VideoView(
        user: fullScreenUser,
        hasMultiCamera: false,
        sharing: sharingUser != null &&
            sharingUser?.userId == fullScreenUser?.userId,
        preview: false,
        focused: false,
        multiCameraIndex: "0",
        videoAspect: VideoAspect.Original,
        fullScreen: true,
      ),
    );

    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 110,
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          alignment: Alignment.center,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  onUserSelected(users[index]); // Select a user
                },
                child: Center(
                  child: VideoView(
                    user: users[index],
                    hasMultiCamera: false,
                    sharing: sharingUser != null &&
                        sharingUser?.userId == users[index].userId,
                    preview: false,
                    focused: false,
                    multiCameraIndex: "0",
                    videoAspect: VideoAspect.Original,
                    fullScreen: false,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              color: Colors.amber,
            ),
          ),
        ),
        if (fullScreenUser != null)
          Positioned.fill(child: fullScreenView), // Full-screen video view
      ],
    );
  }
}

class VideoView extends HookWidget {
  final ZoomVideoSdkUser? user;
  final bool sharing;
  final bool preview;
  final bool focused;
  final bool hasMultiCamera;
  final String multiCameraIndex;
  final String? videoAspect;
  final bool fullScreen;

  const VideoView({
    Key? key,
    required this.user,
    required this.sharing,
    required this.preview,
    required this.focused,
    required this.hasMultiCamera,
    required this.multiCameraIndex,
    this.videoAspect,
    required this.fullScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example of building a video view
    return Container(
      color: Colors.black, // Background color for video
      child: Center(
        child: user != null
            ? Text(
                'User: ${user!.userName}', // Display user's name or video feed
                style: TextStyle(color: Colors.white),
              )
            : const Text(
                'No user available',
                style: TextStyle(color: Colors.red),
              ),
      ),
    );
  }
}
