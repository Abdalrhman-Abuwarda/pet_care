part of vets_module;

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.review,
  });

  final ReviewsModel review;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: AppSize.s16.circularRadius,
      ),
      padding: AppPadding.p16.paddingAll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(review.reviewsBy , style: footNoteBold,),
              Text("2 day ago" , style: captionRegular,),
            ],
          ),
          3.addVerticalSpace,
          RatingStars(rating: review.rate),
          AppSize.s8.addVerticalSpace,
          Text(review.content)
        ],
      ),
    );
  }
}
