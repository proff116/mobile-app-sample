import 'package:flutter/material.dart';
import 'package:mobile_app_sample/app/locator.dart';
import 'package:stacked/stacked.dart';

import 'package:mobile_app_sample/ui/views/services/services_viewmodel.dart';

class ServicesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ServicesViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
      ),
      viewModelBuilder: () => locator<ServicesViewModel>(),
    );
  }
}
