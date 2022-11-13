// ignore_for_file: non_constant_identifier_names
import 'base_config.dart';

class ProdConfig implements BaseConfig {
  @override
  String get ENV => "PROD";

  @override
  String get AD_UNIT_IOS => "ca-app-pub-4395193078201506/6586719028";

  String get AD_UNIT_ANDROID => "ca-app-pub-4395193078201506/4341938872";
}
