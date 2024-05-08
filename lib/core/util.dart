import 'package:flutter/material.dart';

class LanguageDialogButton extends StatelessWidget {
  const LanguageDialogButton({super.key});

  
  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose a language'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('English (En)'),
                  onTap: () {
                    Navigator.pop(context, 'En');
                    // Add your code here for when English is selected
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text('Arabic (Ar)'),
                  onTap: () {
                    Navigator.pop(context, 'Ar');
                    // Add your code here for when Arabic is selected
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showLanguageDialog(context),
      child: const Text('Select Language'),
    );
  }
}