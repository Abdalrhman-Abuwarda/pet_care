part of vets_module;

class VetDetails extends StatelessWidget {
  const VetDetails({required this.vet, Key? key}) : super(key: key);
  final MainVetsModel vet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: AppSize.s40.paddingBottom,
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Start consult"),
        ),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Hero(
                tag: vet.image,
                child: SizedBox(
                  height: AppSize.s300.height,
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl: vet.image,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -20),
                child: Container(
                  padding: AppPadding.p24.paddingAll,
                  decoration: BoxDecoration(
                    color: ColorManager.soft,
                    borderRadius: AppSize.s30.circularRadius,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                vet.name,
                                style: titleSemiBoldPrimary,
                              ),
                              AppSize.s5.addVerticalSpace,
                              RatingStars(rating: vet.rating),
                            ],
                          ),
                          Spacer(),
                          CustomIconButton(
                            onTap: () {},
                            iconPath: IconAssets.appleIcon,
                            size: AppSize.s56,
                          ),
                          AppSize.s5.addHorizontalSpace,
                          CustomIconButton(
                              onTap: () {},
                              iconPath: IconAssets.calendar,
                              size: AppSize.s56)
                        ],
                      ),
                      AppSize.s28.addVerticalSpace,
                      Text(
                        vet.pio,
                        style: footNoteRegular(color: ColorManager.gray),
                      ),
                      Container(
                        margin: AppSize.s24.marginVertical,
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: AppSize.s25.circularRadius,
                            boxShadow: [customShadow()]),
                        padding: AppPadding.p24.paddingAll,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  vet.experienceYears.toString(),
                                  style: h3Medium,
                                ),
                                Text(
                                  "Experience",
                                  style: captionRegular,
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: ColorManager.primaryWithTransparent10,
                            ),
                            Column(
                              children: [
                                Text(vet.rating.toString(), style: h3Medium),
                                Text(
                                  "Completed",
                                  style: captionRegular,
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: ColorManager.secondary,
                            ),
                            Column(
                              children: [
                                Text("\$" + vet.price.toString(),
                                    style: h3Medium),
                                Text(
                                  "Fee",
                                  style: captionRegular,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reviews",
                            style: supTitleBold,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Read all reviews",
                                style:
                                    bodyRegular(color: ColorManager.secondary),
                              )),
                        ],
                      ),
                      ReviewCard(review: vet.reviews.first),
                      AppSize.s80.addVerticalSpace,
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

