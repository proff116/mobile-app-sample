import 'package:injectable/injectable.dart';
import 'package:mobile_app_sample/app/locator.dart';
import 'package:mobile_app_sample/datamodels/user.dart';
import 'package:mobile_app_sample/services/api.dart';
import 'package:stacked/stacked.dart';

@singleton
class UserViewModel extends FutureViewModel {
  String _title = 'User View';
  String get title => _title;

  final int userId;
  UserViewModel({this.userId});

  @override
  Future<User> futureToRun() => locator<Api>().getUserProfile(userId);
}
