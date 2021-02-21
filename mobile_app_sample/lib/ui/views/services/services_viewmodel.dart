import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@singleton
class ServicesViewModel extends BaseViewModel {
  String _title = 'Services View';
  String get title => _title;
}
