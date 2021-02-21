import 'package:auto_route/auto_route_annotations.dart';
import 'package:mobile_app_sample/ui/views/home/home_view.dart';
import 'package:mobile_app_sample/ui/views/posts/posts_view.dart';
import 'package:mobile_app_sample/ui/views/services/services_view.dart';
import 'package:mobile_app_sample/ui/views/user/user_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomeView, initial: true),
  MaterialRoute(page: PostsView),
  MaterialRoute(page: ServicesView),
  MaterialRoute(page: UserView),
])
class $Router {}
