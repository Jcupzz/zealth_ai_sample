import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zealth_ai_sample/MyBottomNavigationBar.dart';
import 'package:zealth_ai_sample/Pages/Home.dart';
import 'package:zealth_ai_sample/Pages/Medication.dart';
import 'package:zealth_ai_sample/Pages/Reports.dart';
import 'package:zealth_ai_sample/Pages/Symptoms.dart';
import 'Static/TabItem.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  // this is static property so other widget throughout the app
  // can access it simply by AppState.currentTab
  static int currentTab = 1;

  // list tabs here
  final List<TabItem> tabs = [
    TabItem(
      tabName: "Home",
      icon: SvgPicture.asset("assets/icons/home.svg"),
      page: Home(),
    ),
    TabItem(
      tabName: "Symptoms",
      icon: SvgPicture.asset("assets/icons/thermo.svg"),
      page: Symptoms(),
    ),

    TabItem(
      tabName: "Medication",
      icon: SvgPicture.asset("assets/icons/medication.svg"),
      page: Medication(),
    ),

    TabItem(
      tabName: "Reports",
      icon: SvgPicture.asset("assets/icons/activity.svg"),
      page: Reports(),
    ),
  ];

  AppState() {
    // indexing is necessary for proper funcationality
    // of determining which tab is active
    tabs.asMap().forEach((index, details) {
      details.setIndex(index);
    });
  }

  // sets current tab index
  // and update state
  void _selectTab(int index) {
    if (index == currentTab) {
      // pop to first route
      // if the user taps on the active tab
      tabs[index].key.currentState.popUntil((route) => route.isFirst);
    } else {
      // update the state
      // in order to repaint
      setState(() => currentTab = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    // WillPopScope handle android back btn
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
        !await tabs[currentTab].key.currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (currentTab != 0) {
            // select 'main' tab
            _selectTab(0);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      // this is the base scaffold
      // don't put appbar in here otherwise you might end up
      // with multiple appbars on one screen
      // eventually breaking the app
      child: Scaffold(
        // indexed stack shows only one child
        body: IndexedStack(
          index: currentTab,
          children: tabs.map((e) => e.page).toList(),
        ),
        // Bottom navigation
        bottomNavigationBar: BottomNavigation(
          onSelectTab: _selectTab,
          tabs: tabs,
        ),
      ),
    );
  }
}