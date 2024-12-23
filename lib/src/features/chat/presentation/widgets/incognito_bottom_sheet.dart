part of '../pages/chats_page.dart';

class _IncognitoBottomSheet extends StatefulWidget {
  const _IncognitoBottomSheet();

  @override
  State<_IncognitoBottomSheet> createState() => _IncognitoBottomSheetState();
}

class _IncognitoBottomSheetState extends State<_IncognitoBottomSheet> {
  int? _selectedIncognitoTypeIndex;

  void _priceTap(int index) {
    setState(() {
      _selectedIncognitoTypeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dark0D,
      padding: EdgeInsets.all(16),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 5),
              SvgPicture.asset(Assets.svg.incognitoBig),
              SizedBox(height: 22),
              RichText(
                text: TextSpan(
                  text: 'Режим ',
                  style: AppTextStyles.s16cF6w500,
                  children: [
                    TextSpan(text: 'инкогнито', style: AppTextStyles.s16cF6w500Italic),
                    TextSpan(text: ' на 24 часа', style: AppTextStyles.s16cF6w500),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text(AppConstData.incognitoInfo, style: AppTextStyles.s14cBCw300),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _IncognitoPrice(
                    dayCount: 1,
                    price: 99,
                    isSelected: _selectedIncognitoTypeIndex == 0,
                    onTap: () => _priceTap(0),
                  ),
                  _IncognitoPrice(
                    dayCount: 3,
                    price: 199,
                    isSelected: _selectedIncognitoTypeIndex == 1,
                    onTap: () => _priceTap(1),
                    additionalInfo: Assets.img.khit.path,
                  ),
                  _IncognitoPrice(
                    dayCount: 7,
                    price: 399,
                    isSelected: _selectedIncognitoTypeIndex == 2,
                    onTap: () => _priceTap(2),
                    additionalInfo: Assets.img.a42.path,
                  ),
                ],
              ),
              SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  final canBuy = _selectedIncognitoTypeIndex != null;
                  toastification.show(
                    showProgressBar: false,
                    autoCloseDuration: Duration(seconds: 3),
                    title: Text(canBuy ? 'Вы типо купили тариф' : 'Выберите тариф'),
                    type: canBuy ? ToastificationType.success : ToastificationType.warning,
                  );
                  if (canBuy) context.router.maybePop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Text('Купить', style: AppTextStyles.s16cF6),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text('условия и положения'.toUpperCase(), style: AppTextStyles.s16cF6)
            ],
          ),
          InkWell(
            onTap: () => context.router.maybePop(),
            child: SvgPicture.asset(Assets.svg.closeBold),
          ),
        ],
      ),
    );
  }
}
