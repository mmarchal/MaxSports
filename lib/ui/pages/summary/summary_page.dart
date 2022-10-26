import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/home_bloc.dart';
import 'package:max_sports/data/states/home_state.dart';
import 'package:max_sports/ui/pages/summary/summary_page_listener.dart';
import 'package:max_sports/ui/pages/summary/summary_page_provider.dart';
import 'package:max_sports/ui/widgets/failed_widget.dart';
import 'package:max_sports/ui/widgets/recap_widget.dart';

import '../../widgets/last_weight_widget.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SummaryPageProvider(
      child: SummaryPageListener(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const DesignText(
                text: "Bienvenue sur Max Sports",
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 20,
              ),
              const DesignText(
                text:
                    "Max Sports est un application qui permet de suivre vos performances sportives.",
                fontStyle: FontStyle.italic,
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is HomeStateGetWeightLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is HomeStateGetWeightLoaded) {
                    return LastWeightWidget(
                      poids: state.currentLastPoids,
                    );
                  } else {
                    return FailedWidget(
                      error: state.currentApiError,
                    );
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is HomeStateGetWeightLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is HomeStateGetWeightLoaded) {
                    return RecapWidget(
                      recap: state.currentRecap,
                    );
                  } else {
                    return FailedWidget(
                      error: state.currentApiError,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
