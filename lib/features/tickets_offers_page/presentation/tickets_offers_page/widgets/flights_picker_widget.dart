import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/core/injectable/injectable.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/cubit/fetch_tickets_cubit.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/presentation/tickets_offers_page/widgets/flight_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlightsPickerWidget extends StatefulWidget {
  const FlightsPickerWidget({super.key});

  @override
  State<FlightsPickerWidget> createState() => _FlightsPickerWidgetState();
}

class _FlightsPickerWidgetState extends State<FlightsPickerWidget> {
  final fetchTicketsCubit = getIt<FetchTicketsCubit>();
  final List<Color> myColors = const [
    AppColors.red,
    AppColors.blue,
    AppColors.darkBlue,
  ];

  @override
  void initState() {
    fetchTicketsCubit.fetchTicketsOffers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.grey1,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Прямые рейсы',
              style: AppTextStyles.title2,
            ),
            SizedBox(
              width: double.infinity,
              child: BlocBuilder<FetchTicketsCubit, FetchTicketsState>(
                bloc: fetchTicketsCubit,
                builder: (context, state) {
                  if (state is FetchTicketsStateInitial) {
                    return const Center(child: Text('Initial',
                      style: AppTextStyles.title3,
                    ));
                  }
                  if (state is FetchTicketsStateLoading) {
                    return const Center(child: Text('Loading',
                      style: AppTextStyles.title3,));
                  }
                  if (state is FetchTicketsStateEmpty) {
                    return const Center(child: Text('Empty',
                      style: AppTextStyles.title3,));
                  }
                  if (state is FetchTicketsStateError) {
                    return const Center(child: Text('Error',
                      style: AppTextStyles.title3,));
                  }
                  if (state is FetchTicketsStateLoaded) {
                    return ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return FlightTileWidget(
                          ticketsOfferEntity: state.ticketsEntity.ticketsOffers[index],
                          companyColor: myColors[index],
                        );
                      },
                    );
                  }else{
                    return const Center(child: Text('Unexpected error',
                      style: AppTextStyles.title3,));
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Text(
                    'Показать все',
                    style: AppTextStyles.blueButtonText1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
