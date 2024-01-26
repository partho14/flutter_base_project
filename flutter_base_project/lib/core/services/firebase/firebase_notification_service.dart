import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_base_project/core/services/notification_handler/notification_handler.dart';

class FirebaseNotificationService {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  final NotificationHandler notificationHandler;

  FirebaseNotificationService(this.notificationHandler);

  Future<void> initialize() async {
    await firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);

    RemoteMessage? message =
        await FirebaseMessaging.instance.getInitialMessage();
    if (message != null) {
      messageHandler(message);
    }

    /// works on app is background
    FirebaseMessaging.onMessage.listen(messageHandler);
    // When app is in foreground
    FirebaseMessaging.onMessageOpenedApp.listen(messageHandler);
    // kill state
    FirebaseMessaging.onBackgroundMessage(firebaseMessingBackgroundHandler);
  }

  Future<void> messageHandler(RemoteMessage message) async {
    if (kDebugMode) {
      print(message.notification?.title);
      print(message.notification?.body);
      print(message.data);
    }
    notificationHandler.handle(message.data);
  }

  Future<String?> getToken() async {
    return await firebaseMessaging.getToken();
  }

  void onTokenRefresh() {
    firebaseMessaging.onTokenRefresh.listen((token) {
      // TODO: implement refresh token api call
    });
  }

  Future<void> subscribeToTopic(String topicName) async {
    await firebaseMessaging.subscribeToTopic(topicName);
  }

  Future<void> unsubscribeToTopic(String topicName) async {
    await firebaseMessaging.unsubscribeFromTopic(topicName);
  }
}

/// top level function - not a method(not related to any class)
Future<void> firebaseMessingBackgroundHandler(RemoteMessage message) async {}
