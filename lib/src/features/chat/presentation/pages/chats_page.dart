import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_const_data.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/generated/assets.gen.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/chats_box.dart';
import '../../domain/entities/chat_entity.dart';
import '../../domain/entities/message_entity.dart';

part '../widgets/chat_item.dart';
part '../widgets/chat_like.dart';
part '../widgets/chats_header.dart';
part '../widgets/incognito_bottom_sheet.dart';
part '../widgets/incognito_price.dart';
part '../widgets/unread_indicator.dart';

@RoutePage()
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
          Expanded(
            child: ChatsBox(
              child: Column(
                children: [
                  _ChatsHeader(),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(bottom: 12),
                      itemCount: AppConstData.tempImages.length + 1,
                      itemBuilder: (_, index) {
                        if (index == 0) return _ChatLike(count: 44);

                        final item = ChatEntity(
                          partner: AppConstData.tempImages[index - 1],
                          lastMessage: MessageEntity(
                            message: 'Последнее сообщение',
                            author: 'You',
                            time: DateTime.now().add(Duration(minutes: Random().nextInt(1000))),
                          ),
                          hasUnreadMessage: index.isEven,
                        );

                        return _ChatItem(chatEntity: item);
                      },
                      separatorBuilder: (_, __) => SizedBox(height: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
