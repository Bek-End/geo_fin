part of '../pages/chats_page.dart';

class _IncognitoPrice extends StatelessWidget {
  const _IncognitoPrice({
    required this.dayCount,
    required this.price,
    required this.isSelected,
    required this.onTap,
    this.additionalInfo,
  });

  final int dayCount;
  final int price;
  final bool isSelected;
  final VoidCallback onTap;
  final String? additionalInfo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 29.5),
            decoration: BoxDecoration(
              color: AppColors.dark21,
              border: Border.all(color: isSelected ? AppColors.whiteF6 : AppColors.grey39),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Row(
                      children: [
                        Text('$dayCount', style: AppTextStyles.s16cF6),
                        SizedBox(width: 4),
                        SvgPicture.asset(Assets.svg.incognito),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('$price ₽', style: AppTextStyles.s16cF6),
                ],
              ),
            ),
          ),
        ),
        if (additionalInfo != null)
          Positioned(
            top: -13,
            child: Image.asset(additionalInfo ?? ''),
          ),
      ],
    );
  }
}
