import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/generated/assets.gen.dart';
import '../../../../core/widgets/chats_box.dart';
import '../../domain/entities/chat_entity.dart';
import '../../domain/entities/message_entity.dart';

part '../widgets/chat_common_like_count.dart';
part '../widgets/chat_header.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.chatEntity});

  final ChatEntity chatEntity;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _ctrl = TextEditingController();
  final _messages = <MessageEntity>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: Column(
                children: [
                  _ChatHeader(chatEntity: widget.chatEntity),
                  Spacer(),
                  _ChatCommonLikeCount(count: 2),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
          Expanded(
            child: ChatsBox(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      itemCount: _messages.length,
                      itemBuilder: (_, index) => SizedBox.shrink(),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          SvgPicture.asset(Assets.svg.plus),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              controller: _ctrl,
                              style: AppTextStyles.s16cF6,
                              decoration: InputDecoration(
                                suffixIconConstraints: BoxConstraints(maxHeight: 24),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: InkWell(
                                    onTap: () {
                                      if (_ctrl.text.trim().isEmpty) return;
                                      _ctrl.clear();
                                      toastification.show(
                                        showProgressBar: false,
                                        autoCloseDuration: Duration(seconds: 3),
                                        title: Text('Вы типо отправили сообщение'),
                                        type: ToastificationType.success,
                                      );
                                    },
                                    child: SvgPicture.asset(Assets.svg.incognito2),
                                  ),
                                ),
                                hintText: 'Сообщение...',
                                hintStyle: AppTextStyles.s14c8Dw300,
                                filled: true,
                                fillColor: Colors.transparent,
                                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.grey8D),
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset(Assets.svg.voise),
                        ],
                      ),
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
