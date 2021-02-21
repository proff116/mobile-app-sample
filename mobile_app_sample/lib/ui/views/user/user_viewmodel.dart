import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@singleton
class UserViewModel extends BaseViewModel {
  String _title = 'User View';
  String get title => _title;
}
