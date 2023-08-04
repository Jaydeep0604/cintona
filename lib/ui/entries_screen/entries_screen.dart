import 'package:cintona/bloc/entries_bloc/entries_bloc.dart';
import 'package:cintona/bloc/entries_bloc/entries_event.dart';
import 'package:cintona/bloc/entries_bloc/entries_state.dart';
import 'package:cintona/utils/app_colors.dart';
import 'package:cintona/widget/entries_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntriesScreen extends StatefulWidget {
  const EntriesScreen({Key? key}) : super(key: key);

  @override
  State<EntriesScreen> createState() => _EntriesScreenState();
}

class _EntriesScreenState extends State<EntriesScreen> {
  late EntriesBloc entriesBloc;
  @override
  void initState() {
    entriesBloc = context.read<EntriesBloc>();
    entriesBloc.add(fetchEntriesEvent());
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
                    "Entries",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: BlocBuilder<EntriesBloc, EntriesState>(
          builder: (context, state) {
            if (state is EntriesInitialState || state is EntriesLoadingState) {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ),
              );
            }
            if (state is EntriesLoadedStete) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 5),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: state.Entrieslist.length,
                    itemBuilder: (context, index) {
                      return EntriesWidget(
                          entriesModel: state.Entrieslist[index]);
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
        ));
  }
}
