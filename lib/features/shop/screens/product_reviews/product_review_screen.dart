import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:t_store_firebase/common/widgets/appbar/appbar.dart';
import 'package:t_store_firebase/common/widgets/products/products/ratings/rating_bar_indicator.dart';
import 'package:t_store_firebase/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:t_store_firebase/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:t_store_firebase/utils/utils.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Adipisicing dolor excepteur ex mollit enim duis ullamco nulla velit non velit adipisicing excepteur laborum. Labore exercitation ad ipsum Lorem occaecat.'),
              const SizedBox(
                height: CSizes.spaceBtwItems,
              ),
              //Overal product Ratings:
              const CRatingProgressIndicator(),
              const CRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '12.345',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: CSizes.spaceBtwSections,
              ),
              //User Reviews List
              const UserReviewCard(
                name: 'John Doe',
                date: '02-11-2022',
                date2: '05-10-2023',
                description:
                    'Non ad sit labore qui dolore esse occaecat sunt eu amet minim. Adipisicing ad qui ut eiusmod ad nisi nostrud labore. Exercitation nisi mollit nisi occaecat tempor eiusmod minim occaecat minim proident qui ipsum dolore ex. Ea adipisicing ex nulla duis occaecat ex amet. In magna ipsum nostrud dolor laboris nostrud commodo. In ipsum aliqua quis sunt fugiat. Fugiat ex officia eiusmod veniam consectetur nulla.',
                companyName: 'T´s Store',
              ),
              const UserReviewCard(
                name: 'Lara Rodriguez',
                date: '30-10-2022',
                date2: '05-10-2023',
                description:
                    'Non ad sit labore qui dolore esse occaecat sunt eu amet minim. Adipisicing ad qui ut eiusmod ad nisi nostrud labore. Exercitation nisi mollit nisi occaecat tempor eiusmod minim occaecat minim proident qui ipsum dolore ex. Ea adipisicing ex nulla duis occaecat ex amet. In magna ipsum nostrud dolor laboris nostrud commodo. In ipsum aliqua quis sunt fugiat. Fugiat ex officia eiusmod veniam consectetur nulla.',
                companyName: 'T´s Store',
              ),
              const UserReviewCard(
                name: 'Gonzalo Perez',
                date: '06-06-2022',
                date2: '05-10-2023',
                description:
                    'Non ad sit labore qui dolore esse occaecat sunt eu amet minim. Adipisicing ad qui ut eiusmod ad nisi nostrud labore. Exercitation nisi mollit nisi occaecat tempor eiusmod minim occaecat minim proident qui ipsum dolore ex. Ea adipisicing ex nulla duis occaecat ex amet. In magna ipsum nostrud dolor laboris nostrud commodo. In ipsum aliqua quis sunt fugiat. Fugiat ex officia eiusmod veniam consectetur nulla.',
                companyName: 'T´s Store',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
