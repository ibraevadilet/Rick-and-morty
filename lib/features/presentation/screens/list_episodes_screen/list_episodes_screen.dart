import 'package:flutter/material.dart';
import 'package:rick_test/core/constants/text_consts.dart';
import 'package:rick_test/features/data/models/list_episodes_model/result_episode.dart';
import 'package:rick_test/features/data/usecase/episodes_usecase.dart';
import 'package:rick_test/features/presentation/bloc/episodes_cubit/episodes_cubit.dart';
import 'package:rick_test/features/presentation/widgets/circule_avatar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_test/features/presentation/screens/list_episodes_screen/widgets/listview_builder_container_episode.dart';

class EpisodesScreen extends StatefulWidget {
  const EpisodesScreen({Key? key}) : super(key: key);

  @override
  State<EpisodesScreen> createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  int thisCurrentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EpisodesCubit(EpisodesUseCase())..getEpisodes(1),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(TextConsts.episodes),
        ),
        body: BlocConsumer<EpisodesCubit, EpisodesState>(
          listener: (context, state) {
            state.maybeWhen(loadedEpisodesState: (model) {}, orElse: () {});
          },
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => const SizedBox(),
                loadingEpisodesState: (_) => const CurcularAvatar(),
                loadedEpisodesState: (model) => ListView.builder(
                    itemCount: model.model.results?.length ?? 1,
                    itemBuilder: ((context, index) =>
                        ListViewBuilderContainerWidgetEpisode(
                            model: model.model.results?[index] ??
                                ResultEpisode()))),
                errorEpisodesState: (message) =>
                    ErrorWidget(message.message.message.toString()));
          },
        ),
      ),
    );
  }
}
