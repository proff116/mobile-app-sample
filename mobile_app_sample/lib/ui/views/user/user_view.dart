import 'package:flutter/material.dart';
import 'package:mobile_app_sample/app/locator.dart';
import 'package:stacked/stacked.dart';

import 'package:mobile_app_sample/ui/views/user/user_viewmodel.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
      ),
      viewModelBuilder: () => locator<UserViewModel>(),
    );
  }
}
