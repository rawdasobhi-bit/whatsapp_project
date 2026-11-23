import 'package:flutter/material.dart';
import 'package:whatsapp_project/shared/app_colors.dart';
import 'package:whatsapp_project/shared/app_text_styles.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String? imageUrl;
  final bool isSender;

  const MessageBubble({
    super.key,
    required this.text,
    this.imageUrl,
    this.isSender = true,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender
          ? AlignmentDirectional.centerStart
          : AlignmentDirectional.centerEnd,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSender ? AppColors.green : AppColors.grey,
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(isSender ? 0 : 16),
            topEnd: Radius.circular(isSender ? 16 : 0),
            bottomStart: const Radius.circular(16),
            bottomEnd: const Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: AppTextStyles.normal16Text),
            if (imageUrl != null) ...[
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage(imageUrl!),
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}