import 'package:flutter/material.dart';

void showNoteDialog({
  required BuildContext context,
  String title = '',
  String text = '',
  required ValueChanged<(String, String)> onSaved,
}) {
  showDialog(
    context: context,
    builder: (context) => NoteDialog(
      text: text,
      onSaved: onSaved,
      title: title,
    ),
  );
}

class NoteDialog extends StatefulWidget {
  const NoteDialog({
    required this.text,
    required this.onSaved,
    super.key,
    required this.title,
  });
  final String title;
  final String text;
  final ValueChanged<(String, String)> onSaved;

  @override
  NoteDialogState createState() => NoteDialogState();
}

class NoteDialogState extends State<NoteDialog> {
  final TextEditingController controllerText = TextEditingController();
  final TextEditingController controllerTitle = TextEditingController();

  @override
  void initState() {
    super.initState();
    controllerText.text = widget.text;
    controllerTitle.text = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controllerTitle,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'title',
              ),
            ),
            Divider(),
            Expanded(
              child: TextField(
                controller: controllerText,
                expands: true,
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write your note here...',
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                widget.onSaved((
                  controllerTitle.text,
                  controllerText.text,
                ));
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
