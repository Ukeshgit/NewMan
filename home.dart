// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:news_app/controller/name_controller.dart';
// import 'package:news_app/controller/number_controller.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     NumberController controller = Get.put(NumberController());
//     TextEditingController name = TextEditingController();
//     NameController nameController = Get.put(NameController());
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           children: [
//             Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                 border: Border.all(),
//               ),
//               child: Center(
//                   child: Obx(() => Text(controller.number.value.toString()))),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       controller.IncreaseNumber();
//                       print(controller.number);
//                     },
//                     child: Text("Increase")),
//                 ElevatedButton(
//                     onPressed: () {
//                       controller.DecreaseNumber();
//                     },
//                     child: Text("Decrease"))
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextField(
//               controller: name,
//               decoration: const InputDecoration(border: OutlineInputBorder()),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Obx(
//               () => Text(nameController.name.value),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   nameController.name.value = name.text;
//                 },
//                 child: Text("Done"))
//           ],
//         ),
//       ),
//     );
//   }
// }
