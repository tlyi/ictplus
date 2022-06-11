import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<PickedFile?> imagePicker(BuildContext context) async {
  final picker = ImagePicker();
  PickedFile? pickedFile;

  await showDialog(
      context: context,
      builder: (BuildContext innerContext) {
        return AlertDialog(
            content: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
            alignment: Alignment.topRight,
            child: Row(
              children: [
                const Expanded(child: Text("Add picture from:")),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(innerContext);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  IconButton(
                      onPressed: () async {
                        pickedFile = await picker.getImage(
                          source: ImageSource.camera,
                          imageQuality: 50,
                        );
                        Navigator.pop(innerContext);
                      },
                      icon: const Icon(Icons.camera, color: Colors.black87)),
                  const Text('Camera')
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () async {
                        pickedFile = await picker.getImage(
                          source: ImageSource.gallery,
                          imageQuality: 50,
                        );
                        Navigator.pop(innerContext);
                      },
                      icon: const Icon(Icons.photo_library,
                          color: Colors.black87)),
                  const Text('Gallery')
                ],
              )
            ],
          ),
        ]));
      });
  return pickedFile;
}
