import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0)),
        borderRadius: BorderRadius.circular(40));

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final inputDecoration = InputDecoration(
      hintText: "Type youur message",
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final textValue = textController.value.text;
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      keyboardAppearance: Brightness.light,
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
      },
    );
  }
}
