part of '../pages/chats_page.dart';

class _ChatItem extends StatelessWidget {
  const _ChatItem({required this.chatEntity});

  final ChatEntity chatEntity;

  String _durationToString(Duration duration) {
    String negativeSign = duration.isNegative ? '-' : '';
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60).abs());
    return "$negativeSign${twoDigits(duration.inHours)}ч $twoDigitMinutes мин";
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () => context.router.push(ChatRoute(chatEntity: chatEntity)),
      leading: Hero(
        tag: chatEntity,
        child: ClipOval(
          child: Image.network(chatEntity.partner, width: 60, height: 60, fit: BoxFit.cover),
        ),
      ),
      title: Text(_durationToString(chatEntity.lastMessage.time.difference(DateTime.now())), style: AppTextStyles.s12cF6w300),
      subtitle: Text(chatEntity.lastMessage.message, style: AppTextStyles.s14cF6w300),
      trailing: chatEntity.hasUnreadMessage ? _UnreadIndicator() : null,
    );
  }
}
