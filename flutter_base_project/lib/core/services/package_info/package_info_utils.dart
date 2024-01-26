import 'package:flutter_base_project/core/services/package_info/package_details.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoUtils {
  static late PackageDetails _packageDetails;

  static PackageDetails get packageDetails => _packageDetails;

  static Future<void> init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _packageDetails = PackageDetails(packageInfo.appName,
        packageInfo.packageName, packageInfo.version, packageInfo.buildNumber);
  }
}
