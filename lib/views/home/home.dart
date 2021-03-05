import 'package:flutter/material.dart';
import 'package:simple_quran_apps/configuration/typography.dart';
import 'package:simple_quran_apps/views/home/tabbar_view/surah_view/surah_view.dart';

import 'component/home_header.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          "Quran App",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              new SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: MediaQuery.of(context).size.height / 3.2,
                flexibleSpace: FlexibleSpaceBar(
                  background: HomeHeader(),
                ),
              ),
              new SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                toolbarHeight: 0,
                bottom: new TabBar(
                  // controller: controller,
                  labelColor: primaryColor,
                  unselectedLabelColor: secondaryColor,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: primaryColor, width: 5),
                  ),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .apply(fontSizeDelta: -4)
                      .bodyText1,
                  tabs: [
                    new Tab(text: 'Surah'),
                    new Tab(text: 'Para'),
                    new Tab(text: 'Page'),
                    new Tab(text: 'Bookmark'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SurahView(),
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 1")),
            ],
          ),
        ),
      ),
    );
  }
}
