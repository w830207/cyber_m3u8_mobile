// ignore_for_file: non_constant_identifier_names
import 'base_config.dart';

class DevConfig implements BaseConfig {
  @override
  String get ENV => "DEV";

  @override
  String get AD_UNIT_IOS => "ca-app-pub-3940256099942544/2934735716";

  @override
  String get AD_UNIT_ANDROID => "ca-app-pub-3940256099942544/2934735716";
}
