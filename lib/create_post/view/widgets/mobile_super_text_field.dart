import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:geat/create_post/view/widgets/widgets.dart';
import 'package:logging/logging.dart';
import 'package:super_editor/super_editor.dart';

/// Demo of mobile text field.
class MobileSuperTextFieldDemo extends StatefulWidget {
  const MobileSuperTextFieldDemo({
    super.key,
    required this.initialText,
    required this.createTextField,
  });

  final AttributedText initialText;
  final Widget Function(MobileTextFieldDemoConfig) createTextField;

  @override
  _MobileSuperTextFieldDemoState createState() =>
      _MobileSuperTextFieldDemoState();
}

class _MobileSuperTextFieldDemoState extends State<MobileSuperTextFieldDemo> {
  final _screenFocusNode = FocusNode();
  late ImeAttributedTextEditingController _textController;
  bool _showDebugPaint = false;

  @override
  void initState() {
    super.initState();

    initLoggers(Level.FINEST, {
      // textFieldLog,
      scrollingTextFieldLog,
      // imeTextFieldLog,
      // androidTextFieldLog,
    });

    _textController = ImeAttributedTextEditingController(
      controller: AttributedTextEditingController(
        text: widget.initialText,
      ),
    );
  }

  @override
  void dispose() {
    deactivateLoggers({
      // textFieldLog,
      scrollingTextFieldLog,
      // imeTextFieldLog,
      // androidTextFieldLog,
    });

    super.dispose();
  }

  MobileTextFieldDemoConfig _createDemoConfig() {
    int? minLines;
    int? maxLines;
    return MobileTextFieldDemoConfig(
      controller: _textController,
      styleBuilder: _styleBuilder,
      minLines: minLines,
      maxLines: maxLines,
      showDebugPaint: _showDebugPaint,
    );
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Column(
        children: [
          Expanded(
            child: Scaffold(
              body: GestureDetector(
                onTap: () {
                  _screenFocusNode.requestFocus();
                },
                behavior: HitTestBehavior.translucent,
                child: Focus(
                  focusNode: _screenFocusNode,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: widget.createTextField(_createDemoConfig()),
                    ),
                  ),
                ),
              ),
              // floatingActionButton: FloatingActionButton(
              //   onPressed: () {
              //     setState(() {
              //       _showDebugPaint = !_showDebugPaint;
              //     });
              //   },
              //   child: const Icon(Icons.bug_report),
              // ),
            ),
          ),
          if (isKeyboardVisible)
            MobileStyleBar(
              textController: _textController,
            ),
        ],
      );
    });
  }

  TextStyle _styleBuilder(Set<Attribution> attributions) {
    final theme = Theme.of(context);
    return TextStyle(
      color: theme.brightness == Brightness.light ? Colors.black : Colors.white,
      fontSize: 22,
      height: 1.4,
      fontWeight: attributions.contains(boldAttribution)
          ? FontWeight.bold
          : FontWeight.normal,
      fontStyle: attributions.contains(italicsAttribution)
          ? FontStyle.italic
          : FontStyle.normal,
      decoration: TextDecoration.combine(
        [
          if (attributions.contains(underlineAttribution))
            TextDecoration.underline,
          if (attributions.contains(strikethroughAttribution))
            TextDecoration.lineThrough,
        ],
      ),
    );
  }
}

class MobileTextFieldDemoConfig {
  const MobileTextFieldDemoConfig({
    required this.controller,
    required this.styleBuilder,
    this.minLines,
    this.maxLines,
    required this.showDebugPaint,
  });

  final ImeAttributedTextEditingController controller;
  final AttributionStyleBuilder styleBuilder;
  final int? minLines;
  final int? maxLines;
  final bool showDebugPaint;
}
