// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_videosdk/native/zoom_videosdk.dart';
// import 'package:flutter_zoom_videosdk/native/zoom_videosdk_user.dart';
// import 'package:news_app/video_view.dart';

// class ZoomIntegration extends StatefulWidget {
//   const ZoomIntegration({super.key});

//   @override
//   State<ZoomIntegration> createState() => _ZoomIntegrationState();
// }

// class _ZoomIntegrationState extends State<ZoomIntegration> {
//   var zoom = ZoomVideoSdk();
//   ZoomVideoSdkUser? fullScreenUser;
//   ZoomVideoSdkUser? sharingUser;
//   List<ZoomVideoSdkUser> users = []; // Replace with your actual user list

//   @override
//   void initState() {
//     super.initState();
//     _initializeZoomSDK();
//   }

//   Future<void> _initializeZoomSDK() async {
//     InitConfig initConfig = InitConfig(
//       domain: "zoom.us",
//       enableLog: true,
//     );

//     Map<String, bool> audioOptions = {
//       "connect": true,
//       "mute": true,
//     };
//     Map<String, bool> videoOptions = {
//       "localVideoOn": true,
//     };

//     JoinSessionConfig joinSession = JoinSessionConfig(
//       sessionName: 'Name of the video session',
//       sessionPassword: 'Session password (if any)',
//       token:
//           "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfa2V5IjoiVlF0aGUyc1dseTlxZzhNRWU3enFBVTcyNXRreGNqaWQ4V3A0Iiwicm9sZV90eXBlIjoxLCJ0cGMiOiJTZXNzaW9uIHdpdGggMTAwIiwidmVyc2lvbiI6MSwiaWF0IjoxNzI4MjMyMjM4LCJleHAiOjE3MjgyMzk0MzgsImNsb3VkUmVjb3JkaW5nT3B0aW9uIjowfQ.GQyqTOerx0q03mLOzOPB8dXZM6YTUk9cahoA8rQxZq4", // Add your JWT token here
//       userName: 'Name of user',
//       audioOptions: audioOptions,
//       videoOptions: videoOptions,
//     );

//     // Uncomment this line when integrating the actual join session functionality
//     // await zoom.joinSession(joinSession);
//   }

//   void onUserSelected(ZoomVideoSdkUser user) {
//     setState(() {
//       fullScreenUser = user; // Update the full-screen user
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: VideoChatView(
//         fullScreenUser: fullScreenUser,
//         sharingUser: sharingUser,
//         users: users,

//         onUserSelected: onUserSelected, // Callback to handle user selection
//       ),
//     );
//   }
// }
