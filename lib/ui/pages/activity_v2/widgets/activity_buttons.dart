import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_design/widgets/button/design_button.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';

class ActivityButtons extends StatelessWidget {
  final bool backButton;

  const ActivityButtons({
    Key? key,
    required this.backButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (backButton)
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: DesignButton.elevated(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                text: 'Retour',
                onPressed: () {},
              ),
            ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            child: DesignButton.elevated(
              icon: const Icon(
                Icons.arrow_forward,
              ),
              text: 'Suivant',
              onPressed:
                  (context.read<ActivityBloc>().state.currentSelectedType !=
                          null)
                      ? () {}
                      : null,
            ),
          ),
        ],
      ),
    );
  }
}
