import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/backend_bloc.dart';
import 'package:max_sports/data/states/backend_state.dart';
import 'package:max_sports/ui/pages/accueil/accueil_page_listener.dart';
import 'package:max_sports/ui/pages/accueil/accueil_page_provider.dart';
import 'package:max_sports/ui/widgets/recap_widget.dart';

import '../../../data/backend.dart';
import '../../../data/entities/api_response.dart';
import '../../../data/entities/poids.dart';
import '../../../data/entities/recap.dart';
import '../../widgets/last_weight_widget.dart';

class AccueilPage extends StatelessWidget {

  const AccueilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AccueilPageProvider(
      child: AccueilPageListener(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Bienvenue sur Max Sports",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Max Sports est un application qui permet de suivre vos performances sportives.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<BackendBloc, BackendState>(
                  builder: (context, state) {
                    return LastWeightWidget(
                      poids: state.currentLastPoids,
                    );
                  }
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<BackendBloc, BackendState>(
                  builder: (context, state) {
                    return RecapWidget(
                      recap: state.currentRecap,
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
