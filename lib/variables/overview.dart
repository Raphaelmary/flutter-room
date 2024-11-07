// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:lumiere/src/common_widgets/searchbar.dart';
// import 'package:lumiere/src/constants/styles.dart';
// import 'package:lumiere/src/features/appointment/presentation/bloc/appointment_bloc.dart';
// import 'package:lumiere/src/utils/responsive.dart';
import 'package:newapp/variables/responsive.dart';

// import '../widgets/dashboarddatawidgetgrid.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({
    super.key,
    required this.screensize,
  });

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // const CustomSearchBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Expanded(
                                  //     flex: 3, child: DashboardDataWidgetGrid()),
                                  Expanded(child: SizedBox())
                                ],
                              ),
                            ),
                            Expanded(child: TodaysAppointment())
                          ],
                        )),
                    ResponsiveUi.showInDesktopViewOnly(
                      context,
                      child: const Expanded(
                          child: Column(
                        children: [
                          Expanded(child: AppointmentRequest()),
                          Expanded(flex: 2, child: TodaysAppointment())
                        ],
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TodaysAppointment extends StatelessWidget {
  const TodaysAppointment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(
              //   'Today\'s appointment',
              //   style: AppTextStyles.miniTextStyles
              //       .copyWith(color: Colors.black, fontSize: 15),
              // ),
              Text(
                'View More',
              ),
            ],
          ),
          Expanded(
            child: ListView(
                children: List.generate(
                    3,
                    (index) => const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              child: Icon(Icons.person_2_outlined),
                            ),
                            title: Text('Emmanuel Onyeji'),
                            trailing: Text('Ongoing'),
                            subtitle: Text('Emergency'),
                          ),
                        ))),
          )
        ],
      ),
    );
  }
}

class AppointmentRequest extends StatelessWidget {
  const AppointmentRequest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(
                //   'Appointment Requests',
                //   style: AppTextStyles.miniTextStyles
                //       .copyWith(color: Colors.black, fontSize: 15),
                // ),
                Text(
                  'View More',
                ),
              ],
            ),
            Expanded(
              child: ListView(
                  children: List.generate(
                      3,
                      (index) => const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                child: Icon(Icons.person_2_outlined),
                              ),
                              title: Text('Emmanuel Onyeji'),
                              trailing: Text('Ongoing'),
                              subtitle: Text('Emergency'),
                            ),
                          ))),
            )
          ],
        ),
      ),
    );
  }
}

class DashBoardTile extends StatelessWidget {
  const DashBoardTile({
    super.key,
    required this.dashBoardTiles,
    required this.index,
  });
  final DashBoardTiles dashBoardTiles;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: getScreenSize(context).width < 1500 ? 200 : 250,
      decoration: BoxDecoration(
          color: dashBoardTiles.color,
          border: Border.all(color: dashBoardTiles.color),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 15),
            child: Material(
              color: dashBoardTiles.color,
              shape: const CircleBorder(),
              elevation: 2,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: dashBoardTiles.color.withOpacity(0.1),
                child: Icon(
                  dashBoardTiles.icn,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   index.toString(),
                //   style: AppTextStyles.largeTextStyles.copyWith(
                //       fontWeight: FontWeight.bold, color: Colors.white),
                // ),
                // Text(
                //   dashBoardTiles.name,
                //   style: AppTextStyles.smallTextStyles.copyWith(
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

List<SalesData> data = [
  SalesData('Adults', 60),
  SalesData('Children', 20),
  SalesData('Teens', 10),
];

// ResponsiveUi.showInDesktopViewOnly(context,
//                   child: const Expanded(child: CustomListViewTable()))
//  ResponsiveUi.showInTabletView(context,
//                               child:
//                                   const Expanded(child: CustomListViewTable())),

enum DashBoardTiles {
  todayappointment(
      icn: Icons.calendar_month_outlined,
      color: Color(0xff7a6efe),
      name: 'Appointment'),
  totalPatients(
      icn: Icons.groups_2_outlined,
      color: Color(0xffff5363),
      name: 'Total patients'),
  reportgen(
      icn: Icons.add_chart_rounded,
      color: Color(0xffffa901),
      name: 'Reports(This month)'),
  templates(
    icn: Icons.edit_document,
    color: Color(0xff24a8fa),
    name: 'Templates',
  ),
  ;

  final String name;
  final IconData icn;
  final Color color;

  const DashBoardTiles({
    required this.icn,
    required this.color,
    required this.name,
  });
}
