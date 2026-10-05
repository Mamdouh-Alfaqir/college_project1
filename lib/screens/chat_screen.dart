import 'package:flutter/material.dart';
import '../data/knowledge_base.dart';
import '../models/message.dart';
import '../services/ai_service.dart';
import '../theme.dart';
import '../widgets/app_sidebar.dart';
import '../widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const ChatScreen({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];
  final TextEditingController _inputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final AiService _aiService = AiService();

  bool _isSending = false;

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _sendMessage(String text) async {
    final trimmed = text.trim();

    if (trimmed.isEmpty || _isSending) return;

    if (!mounted) return;

    setState(() {
      _messages.add(
        ChatMessage(
          text: trimmed,
          sender: Sender.user,
        ),
      );

      _messages.add(
        ChatMessage(
          text: '',
          sender: Sender.ai,
          isTyping: true,
        ),
      );

      _isSending = true;
      _inputController.clear();
    });

    _scrollToBottom();

    final answer = await _aiService.getAnswer(trimmed);

    if (!mounted) return;

    setState(() {
      _messages.removeLast();

      _messages.add(
        ChatMessage(
          text: answer,
          sender: Sender.ai,
        ),
      );

      _isSending = false;
    });

    _scrollToBottom();
  }

  void _newChat() {
    setState(() {
      _messages.clear();
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDarkMode;

    final pageBackground = isDark
        ? AppColors.darkBgPage
        : AppColors.bgPage;

    final cardColor = isDark
        ? AppColors.darkSurface
        : AppColors.bubbleAi;

    final primaryText = isDark
        ? AppColors.darkTextPrimary
        : AppColors.textPrimary;

    final secondaryText = isDark
        ? AppColors.darkTextSecondary
        : AppColors.textSecondary;

    final mutedText = isDark
        ? AppColors.darkTextMuted
        : AppColors.textMuted;

    final borderColor = isDark
        ? AppColors.darkBorder
        : AppColors.border;

    final strongBorderColor = isDark
        ? AppColors.darkBorderStrong
        : AppColors.borderStrong;

    return Scaffold(
      backgroundColor: pageBackground,

      drawer: AppSidebar(
        onNewChat: _newChat,
        onTopicTap: _sendMessage,
        isDarkMode: widget.isDarkMode,
        onThemeChanged: widget.onThemeChanged,
      ),

      appBar: AppBar(
        backgroundColor: pageBackground,
        foregroundColor: primaryText,

        title: Text(
          'Ask about your regulations & calendar',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: primaryText,
          ),
        ),

        actions: [
          Container(
            margin: const EdgeInsets.only(right: 14),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: AppColors.danger.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: AppColors.danger.withValues(alpha: 0.25),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Demo · fictional data',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: AppColors.danger,
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: _messages.isEmpty
                ? _welcomeState(
                    cardColor,
                    primaryText,
                    secondaryText,
                    borderColor,
                  )
                : _messageList(),
          ),

          _composer(
            cardColor,
            primaryText,
            mutedText,
            strongBorderColor,
          ),
        ],
      ),
    );
  }

  Widget _welcomeState(
    Color cardColor,
    Color primaryText,
    Color secondaryText,
    Color borderColor,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(
        20,
        24,
        20,
        20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How can I help with your\nstudent policies today?',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              height: 1.25,
              color: primaryText,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            'I can answer questions about attendance, deadlines, GPA rules, '
            'and graduation requirements — grounded in a sample policy set '
            'for a fictional university, with the source article cited in '
            'every answer.',
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: secondaryText,
            ),
          ),

          const SizedBox(height: 22),

          ...kSuggestedPrompts.map(
            (p) => _promptCard(
              p,
              cardColor,
              primaryText,
              borderColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _promptCard(
    String prompt,
    Color cardColor,
    Color primaryText,
    Color borderColor,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => _sendMessage(prompt),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 13,
            ),
            decoration: BoxDecoration(
              color: cardColor,
              border: Border.all(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              prompt,
              style: TextStyle(
                fontSize: 13.5,
                color: primaryText,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _messageList() {
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.fromLTRB(
        16,
        20,
        16,
        12,
      ),
      itemCount: _messages.length,
      itemBuilder: (context, i) {
        return MessageBubble(
          message: _messages[i],
        );
      },
    );
  }

  Widget _composer(
    Color cardColor,
    Color primaryText,
    Color mutedText,
    Color borderColor,
  ) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          16,
          8,
          16,
          12,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(
                14,
                4,
                6,
                4,
              ),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _inputController,
                      minLines: 1,
                      maxLines: 5,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (value) => _sendMessage(value),

                      decoration: InputDecoration(
                        hintText:
                            'Ask about attendance, deadlines, GPA...',
                        hintStyle: TextStyle(
                          color: mutedText,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                      ),

                      style: TextStyle(
                        fontSize: 14.5,
                        color: primaryText,
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: _isSending
                        ? null
                        : () => _sendMessage(
                              _inputController.text,
                            ),
                    icon: const Icon(
                      Icons.arrow_upward,
                      size: 18,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: isDarkMode
                          ? AppColors.darkSurface2
                          : AppColors.bubbleUser,
                      foregroundColor: primaryText,
                      disabledBackgroundColor: isDarkMode
                          ? AppColors.darkBorder
                          : AppColors.border,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'Answers are generated from a fictional demo policy set — '
              'not real university regulations.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.5,
                color: mutedText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool get isDarkMode => widget.isDarkMode;
}