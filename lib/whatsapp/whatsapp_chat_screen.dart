import 'package:flutter/material.dart';
import 'package:whatsapp_project/common/message_bubble.dart';
import 'package:whatsapp_project/shared/app_colors.dart';
import 'package:whatsapp_project/shared/app_icons.dart';
import 'package:whatsapp_project/shared/app_images.dart';
import 'package:whatsapp_project/shared/app_text_styles.dart';

class WhatsappChatScreen extends StatelessWidget {
  const WhatsappChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: AssetImage(AppImages.background),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: buildAppBar(),
          body: buildChatScreen(),
        ),
      ],
    );
  }

  PreferredSizeWidget buildAppBar() => AppBar(
    backgroundColor: AppColors.green,
    leadingWidth: 56,
    titleSpacing: 0,
    leading: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Image(
        image: AssetImage(AppIcons.backArrow),
        width: 24,
        height: 24,
      ),
    ),
    title: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: const Image(
            image: AssetImage(AppImages.profile),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            'John safwat',
            style: AppTextStyles.bold22Text,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
    actionsPadding: const EdgeInsetsDirectional.only(end: 16),
    actions: const [
      Image(image: AssetImage(AppIcons.phone), width: 28, height: 28),
      SizedBox(width: 12),
      Image(image: AssetImage(AppIcons.video), width: 28, height: 28),
      SizedBox(width: 12),
      Image(image: AssetImage(AppIcons.moreVertical), width: 28, height: 28),
    ],
  );

  Widget buildChatScreen() => Column(
    children: [
      Expanded(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            MessageBubble(text: 'Hello !'),
            MessageBubble(text: 'Hello !', isSender: false),
            MessageBubble(
              text:
              'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It\'s like the universe loves to surprise us when we least expect it!',
            ),
            MessageBubble(
              text: 'what a Great Content Tp learn Flutter',
              imageUrl: AppImages.routeLogo,
            ),
            MessageBubble(
              text: 'what a Great Content Tp learn Flutter',
              isSender: false,
            ),
          ],
        ),
      ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: buildInputBar(),
        ),
      ),
    ],
  );

  Widget buildInputBar() => Row(
    children: [
      Expanded(
        child: TextFormField(
          style: AppTextStyles.normal14WhiteText,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 14),
            hintText: 'Type a message...',
            hintStyle: AppTextStyles.normal14WhiteText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: AppColors.green),
              borderRadius: BorderRadius.circular(40),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: AppColors.green),
              borderRadius: BorderRadius.circular(40),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: Image(
                image: AssetImage(AppIcons.camera),
                width: 24,
                height: 24,
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: Image(
                image: AssetImage(AppIcons.send),
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.circular(40),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: IconButton(
          onPressed: () {},
          icon: Image(
            image: AssetImage(AppIcons.mic),
            width: 24,
            height: 24,
          ),
        ),
      ),
    ],
  );
}