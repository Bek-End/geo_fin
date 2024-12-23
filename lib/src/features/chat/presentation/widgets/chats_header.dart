part of '../pages/chats_page.dart';

class _ChatsHeader extends StatelessWidget {
  const _ChatsHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ЧАТЫ', style: AppTextStyles.s24cF6),
        Spacer(),
        Text('OFF', style: AppTextStyles.s16cF6),
        SizedBox(width: 12),
        InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (_) => _IncognitoBottomSheet(),
          ),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColors.grey2,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: SvgPicture.asset(Assets.svg.incognito),
          ),
        ),
      ],
    );
  }
}
