import 'package:cintona/bloc/population_bloc/population_bloc.dart';
import 'package:cintona/bloc/population_bloc/population_event.dart';
import 'package:cintona/bloc/population_bloc/population_state.dart';
import 'package:cintona/utils/app_colors.dart';
import 'package:cintona/widget/population_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopulationScreen extends StatefulWidget {
  const PopulationScreen({Key? key}) : super(key: key);

  @override
  State<PopulationScreen> createState() => _PopulationScreenState();
}

class _PopulationScreenState extends State<PopulationScreen> {
  
  late PopulationBloc populationBloc;
  @override
  void initState() {
    populationBloc = context.read<PopulationBloc>();
    populationBloc.add(fetchPopulationEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,

        // automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Population",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 10),
            //   child: Container(
            //     padding: EdgeInsets.all(3),
            //     height: 40,
            //     width: 40,
            //     decoration: BoxDecoration(
            //         color: AppColors.whiteColor,
            //         borderRadius: BorderRadius.circular(50)),
            //     child: Image.asset(
            //       "assets/icons/logo_w.png",
            //       color: AppColors.primaryColor,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      body: BlocBuilder<PopulationBloc, PopulationState>(
        builder: (context, state) {
          if (state is PopulationInitialState ||
              state is PopulationLoadingState) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.black,
                color: Colors.white,
              ),
            );
          }
          if (state is PopulationLoadedStete) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 5),
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: state.Populationlist.length,
                  itemBuilder: (context, index) {
                    return PopulationWidget(
                        populationModel: state.Populationlist[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                ),
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
