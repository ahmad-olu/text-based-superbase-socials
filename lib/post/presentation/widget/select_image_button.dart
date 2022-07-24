import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/core/core.dart';
import 'package:geat/post/application/cubit/picture_post_cubit.dart';
import 'package:image_picker/image_picker.dart';

class SelectImageButton extends StatelessWidget {
  const SelectImageButton({
    Key? key,
    required this.context,
    required this.state,
  }) : super(key: key);
  final BuildContext context;
  final CreatePicturePostState state;

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
            context
                .read<CreatePicturePostCubit>()
                .postImageChanged(pickedImages);
          }
        } else {
          final FilePickerResult? result = await FilePicker.platform.pickFiles(
            allowMultiple: true,
            type: FileType.custom,
            allowedExtensions: ['jpg', 'png', 'jpeg'],
          );
          if (result == null) return;
          final List<File> pickedFiles =
              result.paths.map((path) => File(path!)).toList();
          //todo** Do not use BuildContexts across async gaps.
          // ignore: use_build_context_synchronously
          context.read<CreatePicturePostCubit>().postImageChanged(pickedFiles);
        }
      },
      child: Text(
        'Pick Images',
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
