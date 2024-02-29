// import 'package:app/shared/routes.dart';
// import 'package:app/widgets/shared/main_bottom_navigation_bar_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// class VerificationCodeScreen extends StatelessWidget {
//   const VerificationCodeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final double screenHeight = MediaQuery.of(context).size.height;
//     double getHeight(double height) {
//       return screenHeight * height / 812.0;
//     }

//     double getWidth(double width) {
//       return screenWidth * width / 375.0;
//     }

//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       bottomNavigationBar: GestureDetector(
//         onTap: () => Get.offNamed(Routes.newPasswordScreenRoute),
//         child: const MainBottomNavigationBar(
//           content: 'Confirm Code',
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                 top: getHeight(45),
//                 left: getWidth(20),
//               ),
//               child: Container(
//                 width: getHeight(45),
//                 height: getHeight(45),
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Color(0xFFF5F6FA),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     vertical: getHeight(10),
//                   ),
//                   child: SvgPicture.asset('assets/icons/arrow-left.svg'),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: getHeight(15),
//             ),
//             Center(
//               child: Text(
//                 "Verification Code",
//                 style: TextStyle(
//                   fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
//                   fontWeight:
//                       Theme.of(context).textTheme.displayMedium!.fontWeight,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 top: getHeight(68),
//                 left: getWidth(75),
//               ),
//               child: SizedBox(
//                 height: getHeight(166),
//                 width: getWidth(225),
//                 child: SvgPicture.asset(
//                   'assets/images/lock.svg',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 top: getHeight(60),
//                 left: getWidth(20),
//               ),
//               child: Container(
//                 width: getWidth(335),
//                 height: getHeight(105),
//                 child: Form(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         height: getHeight(98),
//                         width: getWidth(77),
//                         child: TextFormField(
//                           onChanged: (value) {
//                             if (value.length == 1) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           },
//                           decoration: InputDecoration(
//                             hintText: "0",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(50.0),
//                             ),
//                             enabledBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                             focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                           ),
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: getHeight(98),
//                         width: getWidth(77),
//                         child: TextFormField(
//                           onChanged: (value) {
//                             if (value.length == 1) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           },
//                           decoration: InputDecoration(
//                             hintText: "0",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(50.0),
//                             ),
//                             enabledBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                             focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                           ),
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: getHeight(98),
//                         width: getWidth(77),
//                         child: TextFormField(
//                           onChanged: (value) {
//                             if (value.length == 1) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           },
//                           decoration: InputDecoration(
//                             hintText: "0",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(50.0),
//                             ),
//                             enabledBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                             focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                           ),
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: getHeight(98),
//                         width: getWidth(77),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: "0",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(50.0),
//                             ),
//                             enabledBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                             focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFFE7E8EA), width: 1.0),
//                             ),
//                           ),
//                           textAlign: TextAlign.center,
//                           keyboardType: TextInputType.number,
//                           inputFormatters: [
//                             LengthLimitingTextInputFormatter(1),
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: getWidth(87),
//                 top: getHeight(150),
//               ),
//               child: RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                   style: TextStyle(
//                     color: Theme.of(context).colorScheme.secondary,
//                     fontSize: 15,
//                     height: 1.4,
//                   ),
//                   children: [
//                     TextSpan(
//                       text: "00:20",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         color: Theme.of(context).colorScheme.primary,
//                       ),
//                     ),
//                     const TextSpan(text: "Resend Confirmation Code"),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
