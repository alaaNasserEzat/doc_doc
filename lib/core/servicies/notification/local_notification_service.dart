import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/main.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static AndroidInitializationSettings androidInitializationSettings =
      AndroidInitializationSettings("@mipmap/ic_launcher");
  static DarwinInitializationSettings darwinInitializationSettings =
      DarwinInitializationSettings();
  static Future init() async {
    flutterLocalNotificationsPlugin.initialize(
      onDidReceiveNotificationResponse: (details) {
        final String? payload = details.payload;
        if (payload != null) {
          navigatorKey.currentState?.pushNamed(
            Routes.notificationScreen,
            arguments: payload,
          );
        }
      },
      settings: InitializationSettings(
        android: androidInitializationSettings,
        iOS: darwinInitializationSettings,
      ),
    );
  }

  static showSecdualNotification(
    int id,
    String title,
    String body,
    String date,
  ) async {
    NotificationDetails notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        "1",
        "my appointment notificatons",
        importance: Importance.max,
        priority: Priority.high,
        styleInformation: BigTextStyleInformation(body),
      ),
    );
    tz.initializeTimeZones();
    final formatter = DateFormat("yyyy-MM-dd hh:mm a");
    ;

    print("dateeeeeeeeeeeeeeeeeeee$date");
    DateTime dateTime = formatter.parse(date);
    if (dateTime.isBefore(DateTime.now())) {
      return;
    }
    DateTime oneHoureBefore = dateTime.subtract(Duration(hours: 1));
    final scheduleDate = tz.TZDateTime.from(oneHoureBefore, tz.local);
    if (scheduleDate.isBefore(DateTime.now())) {
      return;
    }
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id: id,
      title: title,
      body: body,
      scheduledDate: scheduleDate,
      notificationDetails: notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      payload: body,
    );
  }
}
