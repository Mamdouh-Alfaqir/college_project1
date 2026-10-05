import '../data/knowledge_base.dart';

/// This is the ONE file you'll change when your real backend is ready.
/// Everything else in the app just calls `AiService.getAnswer(...)` and
/// doesn't care whether the answer came from a mock or a real RAG pipeline.
class AiService {
  Future<String> getAnswer(String question) async {
    // Simulated "thinking" delay so the typing indicator feels real.
    await Future.delayed(const Duration(milliseconds: 900));
    return KnowledgeBase.answer(question);

    // ---------------------------------------------------------------
    // Once your FastAPI backend is deployed, replace the two lines
    // above with something like this:
    //
    // final response = await http.post(
    //   Uri.parse('https://your-backend.example.com/api/chat'),
    //   headers: {'Content-Type': 'application/json'},
    //   body: jsonEncode({'question': question}),
    // );
    // final data = jsonDecode(response.body);
    // return data['answer'] as String;
    //
    // (Add the `http` package to pubspec.yaml first: http: ^1.2.0)
    // ---------------------------------------------------------------
  }
}
