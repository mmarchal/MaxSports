import 'package:flutter/material.dart';
import 'package:max_sports/ui/pages/stats/stats_page_provider.dart';
import 'package:max_sports/ui/pages/stats/widgets/stats_activity.dart';
import 'package:max_sports/ui/pages/stats/widgets/stats_weight.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> with TickerProviderStateMixin {
  late TabController _controller;

  final List<StatsPageObject> _statsPageObjects = [
    StatsPageObject(
      title: "Poids",
      child: const StatsWeight(),
    ),
    StatsPageObject(
      title: "Activité",
      child: StatsActivity(),
    ),
  ];

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatsPageProvider(
      child: Column(
        children: [
          TabBar(
            controller: _controller,
            labelColor: Colors.red.shade300,
            indicatorColor: Colors.red.shade300,
            tabs: _statsPageObjects
                .map(
                  (e) => Tab(
                    text: e.title,
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: _statsPageObjects
                  .map(
                    (e) => e.child,
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class StatsPageObject {
  final String title;
  final Widget child;

  StatsPageObject({
    required this.title,
    required this.child,
  });
}
