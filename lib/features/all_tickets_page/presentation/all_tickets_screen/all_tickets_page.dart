import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/presentation/cubit/fetch_all_tickets_cubit.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/presentation/cubit/show_entire_route_cubit.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/presentation/widget/ticket_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllTicketsPage extends StatefulWidget {
  const AllTicketsPage({super.key});

  @override
  State<AllTicketsPage> createState() => _AllTicketsPageState();
}

class _AllTicketsPageState extends State<AllTicketsPage> {
  final FocusNode focusNode = FocusNode();

  final showEntireRouteCubit = getIt<ShowEntireRouteCubit>();
  final fetchAllTicketsCubit = getIt<FetchAllTicketsCubit>();
  @override
  void initState() {
    fetchAllTicketsCubit.fetchAllTickets();
    showEntireRouteCubit.viewEntire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Container(
            height: 60,
            width: double.infinity,
            color: AppColors.grey7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.blue,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<ShowEntireRouteCubit, ShowEntireRouteState>(
                        bloc: showEntireRouteCubit,
                        builder: (context, state) {
                          if (state is ShowEntireRouteStateInitial) {
                            return const Center(
                                child: Text(
                                  'Initial',
                                  style: AppTextStyles.title3,
                                ));
                          }
                          if (state is ShowEntireRouteStateLoading) {
                            return const Center(
                                child: Text(
                                  'Loading',
                                  style: AppTextStyles.title3,
                                ));
                          }
                          if (state is ShowEntireRouteStateLoaded) {
                            return Text(
                              state.text,
                              style: AppTextStyles.title3,
                            );
                          }
                          if (state is ShowEntireRouteStateError) {
                            return const Center(
                                child: Text(
                                  'Error',
                                  style: AppTextStyles.title3,
                                ));
                          } else {
                            return const Center(
                                child: Text(
                                  'Unexpected error',
                                  style: AppTextStyles.title3,
                                ));
                          }
                        },
                      ),
                      const Text(
                        '23 февраля, 1 пассажир',
                        style: AppTextStyles.title4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: BlocBuilder<FetchAllTicketsCubit, FetchAllTicketsState>(
              bloc: fetchAllTicketsCubit,
              builder: (context, state) {
                if(state is FetchAllTicketsStateInitial){
                  return const Center(
                      child: Text(
                        'Initial',
                        style: AppTextStyles.title3,
                      ));
                }
                if(state is FetchAllTicketsStateLoading){
                  return const Center(
                      child: Text(
                        'Loading',
                        style: AppTextStyles.title3,
                      ));
                }
                if(state is FetchAllTicketsStateLoaded){
                  return ListView.separated(
                    itemCount: state.allTicketsEntity.tickets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return TicketTileWidget(ticketFlightEntity: state.allTicketsEntity.tickets[index],);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 24);
                    },
                  );
                }
                if(state is FetchAllTicketsStateEmpty){
                  return const Center(
                      child: Text(
                        'Empty',
                        style: AppTextStyles.title3,
                      ));
                }
                if(state is FetchAllTicketsStateError){
                  return const Center(
                      child: Text(
                        'Error',
                        style: AppTextStyles.title3,
                      ));
                }else{
                  return const Center(
                      child: Text(
                        'Unexpected error',
                        style: AppTextStyles.title3,
                      ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
