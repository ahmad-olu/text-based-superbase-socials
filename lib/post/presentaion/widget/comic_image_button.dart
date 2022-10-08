import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/core/presentaion/presentation/responsive.dart';
import 'package:geat/post/application/comic_post_cubit/comic_post_cubit.dart';
import 'package:image_picker/image_picker.dart';

class ComicImageButton extends StatelessWidget {
  const ComicImageButton({
    super.key,
    required this.context,
    required this.state,
  });
  final BuildContext context;
  final ComicPostState state;

  @override
  Widget build(BuildContext context) {
    final mobiledevice = ResponsiveWidget.isMobileDevice;
    return ElevatedButton(
      onPressed: () async {
        if (mobiledevice) {
          final ImagePicker _picker = ImagePicker();
          final List<XFile>? images = await _picker.pickMultiImage();
          if (images != null) {
            final List<File> pickedImages =
                images.map((path) => File(path.path)).toList();
            //todo** Do not use BuildContexts across async gaps.
            // ignore: use_build_context_synchronously
            context.read<ComicPostCubit>().postImageChanged(pickedImages);
          }
        } else {
          return;
          // final FilePickerResult? result = await FilePicker.platform.pickFiles(
          //   allowMultiple: true,
          //   type: FileType.custom,
          //   allowedExtensions: ['jpg', 'png', 'jpeg'],
          // );
          // if (result == null) return;
          // final List<File> pickedFiles =
          //     result.paths.map((path) => File(path!)).toList();
          // //todo** Do not use BuildContexts across async gaps.
          // // ignore: use_build_context_synchronously
          // context.read<ComicPostCubit>().postImageChanged(pickedFiles);
        }
      },
      child: Text(
        'Pick Images',
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
