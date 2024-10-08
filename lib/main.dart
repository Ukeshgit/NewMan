// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_videosdk/native/zoom_videosdk.dart';
// import 'package:flutter_zoom_videosdk/native/zoom_videosdk_session.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Initialize the Zoom SDK
//   await initializeZoomSDK();

//   runApp(MyApp());
// }

// Future<void> initializeZoomSDK() async {
//   InitConfig initConfig = InitConfig(
//     domain: "zoom.us",
//     enableLog: true,
//   );

//   // Create an instance of ZoomVideoSdk
//   ZoomVideoSdk zoomInstance = ZoomVideoSdk();

//   await zoomInstance.initSdk(initConfig);
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Zoom Video SDK Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ZoomSessionPage(),
//     );
//   }
// }

// class ZoomSessionPage extends StatefulWidget {
//   @override
//   _ZoomSessionPageState createState() => _ZoomSessionPageState();
// }

// class _ZoomSessionPageState extends State<ZoomSessionPage> {
//   bool _isInSession = false;
//   ZoomVideoSdkSession? _currentSession;

//   // Constants for session details
//   static const String sessionName = 'test';
//   static const String sessionPassword = "dddd"; // Optional password for session
//   static const String jwtToken =
//       "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfa2V5IjoiVlF0aGUyc1dseTlxZzhNRWU3enFBVTcyNXRreGNqaWQ4V3A0Iiwicm9sZV90eXBlIjoxLCJ0cGMiOiJ0ZXN0IiwidmVyc2lvbiI6MSwiaWF0IjoxNzI4MjMzNjE3LCJleHAiOjE3MjgyMzcyMTd9.ooNYYjt70agulTJJ9y8oUSUQw5WuziiFep8V2Oeq31s"; // Replace with your JWT token
//   static const String userName =
//       'Your Name'; // User's display name in the session

//   Future<void> joinZoomSession() async {
//     ZoomVideoSdk zoomInstance = ZoomVideoSdk();

//     // Define audio and video options
//     Map<String, bool> audioOptions = {
//       "connect": true,
//       "mute": true,
//     };
//     Map<String, bool> videoOptions = {
//       "localVideoOn": true,
//     };

//     // Configure the session
//     JoinSessionConfig joinSession = JoinSessionConfig(
//       sessionName: sessionName,
//       sessionPassword: sessionPassword,
//       token: jwtToken,
//       userName: userName,
//       audioOptions: audioOptions,
//       videoOptions: videoOptions,
//     );

//     // Attempt to join the session
//     try {
//       var result = await zoomInstance.joinSession(joinSession);

//       // Check if the result is of type ZoomVideoSdkSession
//       if (result is ZoomVideoSdkSession) {
//         // _currentSession = result;
//         setState(() {
//           _isInSession = true;
//         });
//       } else {
//         // Handle unexpected return type (e.g., error string)
//         _showErrorDialog('Error joining Zoom session: $result');
//       }
//     } catch (e) {
//       // Handle error and show feedback
//       _showErrorDialog('Error joining Zoom session: $e');
//     }
//   }

//   Future<void> leaveZoomSession() async {
//     if (_currentSession != null) {
//       try {
//         // Assuming there's a method in ZoomVideoSdk to leave the session
//         // await ZoomVideoSdk().leaveSession(_currentSession!);
//         setState(() {
//           _isInSession = false;
//           _currentSession = null;
//         });
//       } catch (e) {
//         _showErrorDialog('Error leaving Zoom session: $e');
//       }
//     } else {
//       _showErrorDialog('No session to leave.');
//     }
//   }

//   void _showErrorDialog(String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Error'),
//           content: Text(message),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Zoom Video SDK Integration'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _isInSession ? leaveZoomSession : joinZoomSession,
//           child: Text(_isInSession ? 'Leave Session' : 'Join Zoom Session'),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/features/home/homepage.dart';
import 'package:news_app/utils/theme.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        darkTheme: darkTheme,
        home: child,
        debugShowCheckedModeBanner: false,
      ),
      child: Homepage(),
    );
  }
}
