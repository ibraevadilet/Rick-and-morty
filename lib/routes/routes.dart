export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';

import 'package:rick_test/features/presentation/screens/detail_episode_info.dart';
import 'package:rick_test/features/presentation/screens/detail_person_info.dart';
import 'package:rick_test/features/presentation/screens/list_episodes_screen/list_episodes_screen.dart';
import 'package:rick_test/features/presentation/screens/main_screen.dart';
import 'package:rick_test/routes/routes.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: MainScreen,
      initial: true,
      path: '/',
    ),
    AdaptiveRoute(
      page: EpisodesScreen,
      initial: true,
      path: '/episodes',
    ),
    AdaptiveRoute(
      page: DetailPersonScreen,
      initial: true,
      path: '/detailPerson',
    ),
    AdaptiveRoute(
      page: DetailEposdeScreen,
      initial: true,
      path: '/detailEpisode',
    )
  ],
)
class $MobileAppRouter {}
