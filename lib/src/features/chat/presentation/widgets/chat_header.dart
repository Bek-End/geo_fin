part of '../pages/chat_page.dart';

class _ChatHeader extends StatelessWidget {
  const _ChatHeader({required this.chatEntity});

  final ChatEntity chatEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          InkWell(
            onTap: context.router.maybePop,
            child: SvgPicture.asset(Assets.svg.chevronLeft),
          ),
          SizedBox(width: 8),
          Hero(
            tag: chatEntity,
            child: ClipOval(
              child: Image.network(chatEntity.partner, width: 30, height: 30, fit: BoxFit.cover),
            ),
          ),
          Spacer(),
          SvgPicture.asset(Assets.svg.menu),
        ],
      ),
    );
  }
}
