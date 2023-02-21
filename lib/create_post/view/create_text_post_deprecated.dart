// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:geat/create_post/view/widgets/widgets.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:super_editor/super_editor.dart';

// class CreateTextPostPage extends ConsumerStatefulWidget {
//   const CreateTextPostPage({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _CreateTextPostPageState();
// }

// class _CreateTextPostPageState extends ConsumerState<CreateTextPostPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const FittedBox(
//           child: Text(
//             'Create a Novel or Write up',
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
//             child: ElevatedButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(7)),
//                   side: BorderSide(),
//                 ),
//               ),
//               child: const Text('Upload Post'),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
//             child: IconButton(
//               onPressed: () {
//                 createPostModalBottomSheet(context);
//               },
//               icon: const Icon(Icons.extension_sharp),
//             ),
//           ),
//         ],
//       ),
//       body: MobileSuperTextFieldDemo(
//         initialText: AttributedText(text: ""),
//         createTextField: _buildTextField,
//       ),
//     );
//   }

//   Future<dynamic> createPostModalBottomSheet(BuildContext context) {
//     final theme = Theme.of(context);
//     return showModalBottomSheet(
//       context: context,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(20),
//         ),
//       ),
//       builder: (context) {
//         return SizedBox(
//           height: 400,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ListView(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     TextButton(
//                         onPressed: () {},
//                         child: const Text('Pick an Image'),
//                         style: TextButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                               side: BorderSide(
//                                   color: theme.colorScheme.secondary),
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(20))),
//                         )),
//                     Card(
//                       shape: RoundedRectangleBorder(
//                           side: BorderSide(color: theme.colorScheme.secondary),
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(20))),
//                       child: Center(
//                         child: Icon(
//                           Icons.image,
//                           size: 150,
//                           color: Theme.of(context).colorScheme.primary,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 TextFormField(
//                   initialValue: '',
//                   decoration: InputDecoration(
//                     labelText: 'Title',
//                     helperText: 'mogomcrica',
//                     //errorText: _emailError(context, email),
//                     errorMaxLines: 2,
//                     filled: false,
//                     fillColor: theme.scaffoldBackgroundColor,
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                       color: theme.primaryColor,
//                       width: 3,
//                     )),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   textInputAction: TextInputAction.next,
//                   onChanged: (value) {},
//                 ),
//                 TextFormField(
//                   initialValue: '',
//                   decoration: InputDecoration(
//                     labelText: 'Sub Title',
//                     helperText: '-------------===========>',
//                     //errorText: _emailError(context, email),
//                     errorMaxLines: 2,
//                     filled: false,
//                     fillColor: theme.scaffoldBackgroundColor,
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                       color: theme.primaryColor,
//                       width: 3,
//                     )),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   textInputAction: TextInputAction.next,
//                   onChanged: (value) {},
//                 ),
//                 SwitchListTile(
//                   title: const Text('draft'),
//                   subtitle: const Text(
//                       'only you would see this until you toggle the switch'),
//                   value: true,
//                   onChanged: (value) {},
//                 ),
//                 SwitchListTile(
//                   title: const Text('Can Re-imagine'),
//                   value: false,
//                   onChanged: (value) {},
//                 ),
//                 SwitchListTile(
//                   title: const Text('Can Comment'),
//                   value: false,
//                   onChanged: (value) {},
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Close'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildTextField(MobileTextFieldDemoConfig config) {
//     final genericTextStyle = config.styleBuilder({});
//     final lineHeight =
//         genericTextStyle.fontSize! * (genericTextStyle.height ?? 1.0);
//     final theme = Theme.of(context);

//     return SingleChildScrollView(
//       child: SuperAndroidTextField(
//         textController: config.controller,
//         textStyleBuilder: config.styleBuilder,
//         hintBehavior: HintBehavior.displayHintUntilTextEntered,
//         hintBuilder: StyledHintBuilder(
//           hintText: AttributedText(text: "Start here..."),
//           hintTextStyleBuilder: (attributions) {
//             return config
//                 .styleBuilder(attributions)
//                 .copyWith(color: Colors.grey);
//           },
//         ).build,
//         selectionColor: theme.colorScheme.secondary.withOpacity(0.4),
//         caretColor: theme.colorScheme.secondary,
//         handlesColor: Colors.lightGreen,
//         minLines: config.minLines,
//         maxLines: config.maxLines,
//         lineHeight: lineHeight,
//         padding: const EdgeInsets.only(top: 15),
//         textInputAction: TextInputAction.newline,
//       ),
//     );
//   }
// }
