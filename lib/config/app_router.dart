import 'package:flutter/material.dart';
import 'package:telecom_worker_manager_flutter/screens/admins/admin_screen.dart';
import 'package:telecom_worker_manager_flutter/screens/auth/sign_in.dart';
import 'package:telecom_worker_manager_flutter/screens/main/dashboard.dart';
import 'package:telecom_worker_manager_flutter/screens/main/history.dart';
import 'package:telecom_worker_manager_flutter/screens/main/setting.dart';
import 'package:telecom_worker_manager_flutter/screens/main/task.dart';
import 'package:telecom_worker_manager_flutter/screens/action/add_task.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/signin':
        return SignInScreen.route();
      case '/dashboard':
        return DashboardScreenPage.route();
      case '/task':
        return TaskScreenPage.route();
      case '/add-task':
        return AddTaskView.route();
      case '/history':
        return HistoryScreenPage.route();
      case '/setting':
        return SettingScreenPage.route();
      case '/admin-page':
        return AdminScreenPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (context) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
            ));
  }
}
