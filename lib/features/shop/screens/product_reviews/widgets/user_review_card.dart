import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store_firebase/common/widgets/products/products/product_cards/rounded_container.dart';
import 'package:t_store_firebase/common/widgets/products/products/ratings/rating_bar_indicator.dart';
import 'package:t_store_firebase/utils/utils.dart';

class UserReviewCard extends StatelessWidget {
  final String name;
  final String date, date2;
  final String description;
  final String companyName;

  const UserReviewCard(
      {super.key,
      required this.name,
      required this.date,
      required this.date2,
      required this.description,
      required this.companyName});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(CImages.userProfileImage1),
                ),
                const SizedBox(
                  width: CSizes.spaceBtwItems,
                ),
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
          ],
        ),
        const SizedBox(
          width: CSizes.spaceBtwItems,
        ),
        //Review:
        Row(
          children: [
            const CRatingBarIndicator(rating: 4),
            const SizedBox(
              width: CSizes.spaceBtwItems,
            ),
            Text(
              date,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems,
        ),
        ReadMoreText(
          description,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CColors.primary),
          lessStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CColors.primary),
        ),
        const SizedBox(
          height: CSizes.spaceBtwItems,
        ),
        //Company review:
        CRoundedContainer(
          backgroundColor: dark ? CColors.darkerGrey : CColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(CSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      companyName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      date2,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: CSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'Non ad sit labore qui dolore esse occaecat sunt eu amet minim. Adipisicing ad qui ut eiusmod ad nisi nostrud labore. Exercitation nisi mollit nisi occaecat tempor eiusmod minim occaecat minim proident qui ipsum dolore ex. Ea adipisicing ex nulla duis occaecat ex amet. In magna ipsum nostrud dolor laboris nostrud commodo. In ipsum aliqua quis sunt fugiat. Fugiat ex officia eiusmod veniam consectetur nulla.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show less',
                  trimCollapsedText: 'Show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: CSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
