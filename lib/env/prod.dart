// ignore_for_file: non_constant_identifier_names
import 'base_config.dart';

class ProdConfig implements BaseConfig {
  @override
  String get ENV => "PROD";

  @override
  String get AD_UNIT => "ca-app-pub-4395193078201506/6586719028";
}
