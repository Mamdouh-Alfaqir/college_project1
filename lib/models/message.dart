enum Sender { user, ai }

class ChatMessage {
  final String text;
  final Sender sender;
  final bool isTyping;

  ChatMessage({
    required this.text,
    required this.sender,
    this.isTyping = false,
  });

  ChatMessage copyWith({String? text, bool? isTyping}) {
    return ChatMessage(
      text: text ?? this.text,
      sender: sender,
      isTyping: isTyping ?? this.isTyping,
    );
  }
}
