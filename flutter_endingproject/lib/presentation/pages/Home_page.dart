import 'package:flutter/material.dart';
import 'package:flutter_endingproject/core/theme/app_pallete.dart';
import 'package:flutter_endingproject/data/demoDB.dart';
import 'package:flutter_endingproject/data/model.dart';
import 'package:flutter_endingproject/presentation/pages/widgets/nav_bar.dart';
import 'package:flutter_endingproject/presentation/pages/widgets/searchbar_page.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatelessWidget {
  final DBDemo dbDemo;

  const HomePage({Key? key, required this.dbDemo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: AppPallete.iconColor,
              size: 40,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          SearchbarWidget(
            hint: "search settings, etc",
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dbDemo.getAllModels().length,
              itemBuilder: (context, index) {
                Model model = dbDemo.getAllModels()[index];
                return ListTile(
                  title: Text(model.name),
                  subtitle: Text(model.ssid),
                  trailing: Text(model.battery.toString()),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
