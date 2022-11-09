// ignore_for_file:constant_identifier_names
import 'dev.dart';
import 'base_config.dart';
import 'prod.dart';

class AppConfig {
  static final AppConfig _instance = AppConfig._internal();
  factory AppConfig() => _instance;
  AppConfig._internal();

  static const String ENV_DEV = 'DEV';
  static const String ENV_PROD = 'PROD';

  static BaseConfig _config = DevConfig();
  static BaseConfig get config => _config;

  initConfig(String environment) {
    _config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case AppConfig.ENV_PROD:
        return ProdConfig();
      case AppConfig.ENV_DEV:
        return DevConfig();
      default:
        return DevConfig();
    }
  }
}
