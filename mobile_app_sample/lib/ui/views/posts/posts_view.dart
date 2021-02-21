import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:mobile_app_sample/app/locator.dart';

import 'package:mobile_app_sample/ui/views/posts/posts_viewmodel.dart';

class PostsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostsViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
      ),
      viewModelBuilder: () => locator<PostsViewModel>(),
    );
  }
}
