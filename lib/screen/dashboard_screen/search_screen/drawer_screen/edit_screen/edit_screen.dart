import 'package:code_master/screen/dashboard_screen/search_screen/drawer_screen/edit_screen/edit_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/common_sizebox.dart';
import 'edit_screen_widget.dart';

class EditScreen extends StatelessWidget {
  EditScreen({super.key});

  EditScreenController editScreenController = Get.put(EditScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: editScreenAppBar,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFFf3e7e9), Color(0XFFe3eeff)],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width / 20,),
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    heightSizeBox(20),
                    imagePicker,
                    heightSizeBox(Get.height / 30),
                    editScreenNameTextField,
                    heightSizeBox(Get.height / 30),
                    editScreenBirthOfDate,
                    heightSizeBox(Get.height / 40),
                    editScreenStudyColumn,
                    heightSizeBox(Get.height / 40),
                    editScreenRadioButtonColumn,
                    heightSizeBox(Get.height / 30),
                    editScreenRow,
                    heightSizeBox(Get.height / 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//
// import 'dart:io';
//
// import 'package:flutter/material.dart';
//
//
// class Image_Picker extends StatefulWidget {
//   const Image_Picker({Key? key}) : super(key: key);
//
//   @override
//   State<Image_Picker> createState() => _Image_PickerState();
// }
//
// class _Image_PickerState extends State<Image_Picker> {
//
//   File? file;
//
//   Future<void> imagePick() async {
//     ImagePicker picker = ImagePicker();
//     XFile? image = await picker.pickImage(source: ImageSource.camera);
//     file = File(image!.path);
//     setState(() {
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           children: [
//             CircleAvatar(
//               radius: 100,
//               backgroundImage: file == null ?
//               NetworkImage('https://images.unsplash.com/photo-1688728215345-0990b69a1ca8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDd8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60')
//                   : FileImage(file!) as ImageProvider,
//             ),
//             IconButton(onPressed: (){
//               imagePick();
//               setState(() {
//
//               });
//             }, icon: Icon(Icons.add),),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
