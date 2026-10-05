import 'package:flutter/material.dart';
import '../models/message.dart';
import '../theme.dart';
 
class MessageBubble extends StatelessWidget {
  final ChatMessage message;
 
  const MessageBubble({
    super.key,
    required this.message,
  });
 
  @override
  Widget build(BuildContext context) {
    final isUser = message.sender == Sender.user;
    final isDark = Theme.of(context).brightness == Brightness.dark;
 
    final aiBubbleColor =
        isDark ? AppColors.darkSurface : AppColors.bubbleAi;
 
    // FIX: was AppColors.bubbleUser (always light) — now checks isDark
    final userBubbleColor =
        isDark ? AppColors.darkBubbleUser : AppColors.bubbleUser;
 
    final borderColor =
        isDark ? AppColors.darkBorder : AppColors.border;
 
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isUser) _avatar(isUser, isDark),
          if (!isUser) const SizedBox(width: 10),
 
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.72,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 11,
              ),
              decoration: BoxDecoration(
                color: isUser ? userBubbleColor : aiBubbleColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(14),
                  topRight: const Radius.circular(14),
                  bottomLeft: Radius.circular(isUser ? 14 : 4),
                  bottomRight: Radius.circular(isUser ? 4 : 14),
                ),
                border: isUser
                    ? null
                    : Border.all(
                        color: borderColor,
                      ),
              ),
              child: message.isTyping
                  ? const _TypingDots()
                  : _buildRichText(isUser, isDark),
            ),
          ),
 
          if (isUser) const SizedBox(width: 10),
          if (isUser) _avatar(isUser, isDark),
        ],
      ),
    );
  }
 
  Widget _avatar(bool isUser, bool isDark) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: isUser
          ? (isDark
              ? AppColors.darkBorderStrong
              : AppColors.borderStrong)
          : AppColors.accent,
      child: Text(
        isUser ? 'You' : 'MU',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: isUser
              ? (isDark
                  ? AppColors.darkTextPrimary
                  : AppColors.textPrimary)
              : AppColors.sidebar,
        ),
      ),
    );
  }
 
  // Highlights [bracketed citations] in blue.
  Widget _buildRichText(bool isUser, bool isDark) {
    final baseStyle = TextStyle(
      fontSize: 14.5,
      height: 1.5,
      // FIX: was hardcoded Colors.white for user bubbles — invisible on
      // the light-grey user bubble in light mode. Now checks isDark.
      color: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
    );
 
    // FIX: was AppColors.accent / accentDark (both near-black) — now blue
    final citeStyle = TextStyle(
      fontSize: 12.5,
      fontWeight: FontWeight.w600,
      color: isDark ? AppColors.darkLink : AppColors.link,
    );
 
    final pattern = RegExp(r'\[([^\]]+)\]');
    final spans = <TextSpan>[];
 
    int last = 0;
 
    for (final match in pattern.allMatches(message.text)) {
      if (match.start > last) {
        spans.add(
          TextSpan(
            text: message.text.substring(last, match.start),
          ),
        );
      }
 
      spans.add(
        TextSpan(
          text: match.group(0),
          style: citeStyle,
        ),
      );
 
      last = match.end;
    }
 
    if (last < message.text.length) {
      spans.add(
        TextSpan(
          text: message.text.substring(last),
        ),
      );
    }
 
    return RichText(
      text: TextSpan(
        style: baseStyle,
        children: spans,
      ),
    );
  }
}
 
class _TypingDots extends StatefulWidget {
  const _TypingDots();
 
  @override
  State<_TypingDots> createState() => _TypingDotsState();
}
 
class _TypingDotsState extends State<_TypingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
 
  @override
  void initState() {
    super.initState();
 
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    )..repeat();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34,
      height: 14,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (i) {
              final t = (_controller.value - i * 0.15) % 1.0;
              final scale = t < 0.3
                  ? 1.0 + (0.3 - (t - 0.15).abs())
                  : 1.0;
 
              final dy = t < 0.3 ? -3.0 * scale : 0.0;
 
              return Transform.translate(
                offset: Offset(0, dy),
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: AppColors.textMuted,
                    shape: BoxShape.circle,
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}