import 'package:file_picker/file_picker.dart';

import 'controller/iphone_13_pro_max_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:rohit_s_application8/core/app_export.dart';

class Iphone13ProMaxOneScreen extends StatefulWidget {
  @override
  State<Iphone13ProMaxOneScreen> createState() => _nameState();
}

class _nameState extends State<Iphone13ProMaxOneScreen> {
  FilePickerResult? result;

//   void chooseImage() async {
//     pickedFile = await FilePicker.platform.pickFiles();
//     if (pickedFile != null) {
//       try {
//         setState(() {
//           logoBase64 = pickedFile!.files.first.bytes;
//         });
//       } catch (err) {
//         print(err);
//       }
//     } else {
//       print('No Image Selected');
//     }
// }

  @override
  Widget build(BuildContext context) {
    return
        //   return SafeArea(
        //     child: Scaffold(
        //       backgroundColor: ColorConstant.black900,
        //       body: Container(
        //         width: double.maxFinite,
        //         padding: getPadding(
        //           left: 55,
        //           right: 55,
        //         ),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               padding: getPadding(
        //                 left: 20,
        //                 top: 10,
        //                 right: 20,
        //                 bottom: 10,
        //               ),
        //               decoration: AppDecoration.fillBluegray100.copyWith(
        //                 borderRadius: BorderRadiusStyle.roundedBorder26,
        //               ),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   InkWell(
        //                     onTap: () async {
        //                       var picked = await FilePicker.platform.pickFiles();
        //                     },
        //                     child: Container(
        //                       height: getVerticalSize(
        //                         58,
        //                       ),
        //                       width: getHorizontalSize(
        //                         149,
        //                       ),
        //                       margin: getMargin(
        //                         top: 2,
        //                         bottom: 1,
        //                       ),
        //                       decoration: BoxDecoration(
        //                         color: ColorConstant.black900,
        //                         borderRadius: BorderRadius.circular(
        //                           getHorizontalSize(
        //                             20,
        //                           ),
        //                         ),
        //                       ),
        //                       child: Text(
        //                         "Choose files",
        //                         style: TextStyle(color: Colors.white),
        //                       ),
        //                     ),
        //                   ),
        //                   CustomImageView(
        //                     imagePath: ImageConstant.imgMicrophone,
        //                     height: getSize(
        //                       60,
        //                     ),
        //                     width: getSize(
        //                       60,
        //                     ),
        //                     margin: getMargin(
        //                       right: 2,
        //                       bottom: 1,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   );
        // }
        MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("File picker demo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (result != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Selected file:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: result?.files.length ?? 0,
                        itemBuilder: (context, index) {
                          return Text(result?.files[index].name ?? '',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold));
                        })
                  ],
                ),
              ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  result =
                      await FilePicker.platform.pickFiles(allowMultiple: true);
                  if (result == null) {
                    print("No file selected");
                  } else {
                    setState(() {});
                    result?.files.forEach((element) {
                      print(element.name);
                    });
                  }
                },
                child: const Text("File Picker"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
