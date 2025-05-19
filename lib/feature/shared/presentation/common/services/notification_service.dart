// import 'package:common/helper/fcm_helper.dart';
// import 'package:common/helper/notification_helper.dart';
// import 'package:dependencies/firebase_messaging/firebase_messaging.dart';
// import 'package:dependencies/flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:dependencies/injectable/injectable.dart';

// @lazySingleton
// class NotificationService {
//   NotificationService(
//     this._localNotification,
//   );

//   final FlutterLocalNotificationsPlugin _localNotification;

//   Future<void> initLocalNotification() async {
//     const androidInitializationSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const iOSinitializationSettings = DarwinInitializationSettings(
//       requestAlertPermission: false,
//       requestBadgePermission: false,
//       requestSoundPermission: false,
//     );

//     const initializationSettings = InitializationSettings(
//       android: androidInitializationSettings,
//       iOS: iOSinitializationSettings,
//     );

//     await _localNotification
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(
//           NotificationHelper.getAndroidNotificationChannel(),
//         );

//     await _localNotification.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse:
//           NotificationHelper.handlingOnTapLocalNotification,
//     );
//   }

//   Future<void> initForegroundFCM() async {
//     final messaging = FirebaseMessaging.instance;

//     await FcmHelper.requestPermissionMessaging();

//     await messaging.subscribeToTopic('all').timeout(
//           const Duration(seconds: 1),
//           onTimeout: () => null,
//         );

//     FirebaseMessaging.onMessage.listen(
//       NotificationHelper.handlingOnReceiveFCMNotification,
//     );
//   }
// }
