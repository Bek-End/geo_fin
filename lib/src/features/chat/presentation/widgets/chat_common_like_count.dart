part of '../pages/chat_page.dart';

class _ChatCommonLikeCount extends StatelessWidget {
  const _ChatCommonLikeCount({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.purple,
      ),
      child: Row(
        children: [
          Image.asset(Assets.img.rocket.path),
          SizedBox(width: 4),
          Expanded(
            child: Text('$count общих соблазна', style: AppTextStyles.s13cF6w300Italic),
          ),
          SvgPicture.asset(Assets.svg.close),
        ],
      ),
    );
  }
}
