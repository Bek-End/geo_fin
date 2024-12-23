part of '../pages/chats_page.dart';

class _ChatLike extends StatelessWidget {
  const _ChatLike({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.dark1F,
        child: Center(
          child: SvgPicture.asset(Assets.svg.likeFill),
        ),
      ),
      title: Text(
        '$count человека тебя лайкнули',
        style: AppTextStyles.s14cF6w500,
      ),
      trailing: _UnreadIndicator(),
    );
  }
}
