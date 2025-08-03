import '../models/QuizQuestion.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  // New questions added here
  QuizQuestion(
    'What is "Hot Reload" in Flutter?',
    [
      'A feature that reloads the app instantly with code changes, preserving its state.',
      'A feature that restarts the app from scratch.',
      'A command to clear the app\'s cache.',
      'A tool for debugging network requests.',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the `pubspec.yaml` file?',
    [
      'To manage dependencies and assets for the project.',
      'To define the app\'s main layout.',
      'To store the app\'s state.',
      'To handle user authentication.',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a vertical list of scrollable children?',
    [
      'ListView',
      'Column',
      'Row',
      'Stack',
    ],
  ),
  QuizQuestion(
    'Which widget is used to place widgets on top of each other?',
    [
      'Stack',
      'Row',
      'Column',
      'Container',
    ],
  ),
  QuizQuestion(
    'What is the main function of `mainAxisAlignment` and `crossAxisAlignment`?',
    [
      'To align widgets within a `Row` or `Column`.',
      'To handle user input.',
      'To manage the app\'s state.',
      'To define the app\'s theme.',
    ],
  ),
  QuizQuestion(
    'What is `BuildContext` in Flutter?',
    [
      'A handle to the location of a widget in the widget tree.',
      'A tool for debugging the app.',
      'The data model for the app.',
      'A class for creating animations.',
    ],
  ),
];