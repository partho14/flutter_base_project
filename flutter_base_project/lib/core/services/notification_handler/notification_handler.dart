import 'package:flutter_base_project/core/services/notification_handler/routes/notification_route.dart';
import 'package:flutter_base_project/core/services/notification_handler/routes/order_history_route.dart';

class NotificationHandler {
  final List<NotificationRoute> _routes = [
    OrderHistoryRoute(),
  ];

  void handle(Map<String, dynamic> data) {
    for (NotificationRoute route in _routes) {
      if (data['route_name'] == route.getRouteName()) {
        route.navigate();
      }
    }
  }
}
