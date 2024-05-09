import 'package:aviatickets_testapp/core/assets/app_colors/app_colors.dart';
import 'package:aviatickets_testapp/core/assets/app_text_styles/app_text_styles.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/entity/offer_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListViewMusicTile extends StatelessWidget{
  const ListViewMusicTile({super.key, required this.offerEntity, required this.linkPicture});
  final OfferEntity offerEntity;
  final String linkPicture;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(
        width: 130,
        height: 130,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(linkPicture),
        ),
      ),
      const SizedBox(height: 8),
      Text(offerEntity.title,
      style: AppTextStyles.title3,
      ),
        const SizedBox(height: 8),
        Text(offerEntity.town,
          style: AppTextStyles.text2,
        ),
        const SizedBox(height: 7),
        Row(children: [
          SvgPicture.asset('assets/icons/boing.svg',
          width: 17,
          height: 17,
          color: AppColors.white,
          ),
          const SizedBox(width: 3),
          Text('от ${offerEntity.price.value}₽',
          style: AppTextStyles.text2,
          ),
        ],
        ),
      ],
    );
  }

}