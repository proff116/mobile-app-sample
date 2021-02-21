// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i3;

import '../services/third_party_services_module.dart' as _i7;
import '../ui/views/posts/posts_viewmodel.dart' as _i4;
import '../ui/views/services/services_viewmodel.dart' as _i5;
import '../ui/views/user/user_viewmodel.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.factory<_i3.DialogService>(() => thirdPartyServicesModule.dialogService);
  gh.factory<_i3.NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  gh.singleton<_i4.PostsViewModel>(_i4.PostsViewModel());
  gh.singleton<_i5.ServicesViewModel>(_i5.ServicesViewModel());
  gh.singleton<_i6.UserViewModel>(_i6.UserViewModel());
  return get;
}

class _$ThirdPartyServicesModule extends _i7.ThirdPartyServicesModule {
  @override
  _i3.DialogService get dialogService => _i3.DialogService();
  @override
  _i3.NavigationService get navigationService => _i3.NavigationService();
}
