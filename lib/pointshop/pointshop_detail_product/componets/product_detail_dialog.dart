// import 'package:flutter/material.dart';
// import 'package:peoples_tech/constants/my_colors.dart';
//
// class DetailDialog extends StatefulWidget {
//
//   final int userPoing;
//   final int selectedProductIndex;
//   const DetailDialog({
//     required this.selectedProductIndex,
//     required this.userPoing,
//
//     Key? key}) : super(key: key);
//
//   @override
//   State<DetailDialog> createState() => _DetailDialogState();
// }
//
// class _DetailDialogState extends State<DetailDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.75,
//         height: MediaQuery.of(context).size.height * 0.5,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//               horizontal: 20, vertical: 20),
//           child: Column(
//             children: [
//               Container(
//                 height: 80,
//                 width: 80,
//                 child: Image.asset(selectedProduct.productImg!),
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     SizedBox(height: 20),
//                     Text(selectedProduct.productName),
//                     SizedBox(height: 5),
//                     Text("을(를) 구매하시겠어요?"),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 20),
//                       child: Container(
//                         height: 43,
//                         decoration: BoxDecoration(
//                           color: kGray,
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(width: 1, color: kGray),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("보유"),
//                               RichText(text: TextSpan(
//                                   text: NumberFormat("#,### P").format(userPoint),
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: kBlack
//                                   )
//                               ))
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 263,
//                       height: 43,
//                       decoration: BoxDecoration(
//                         color: kGray,
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(width: 1, color: kGray),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("소모"),
//                             RichText(text: TextSpan(
//                                 text: NumberFormat(" #,### p").format(selectedProduct.productPoint),
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: kBlack,
//                                 )
//                             ))
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//
//                   Expanded(
//                     child: SizedBox(
//                       height: 50,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: Text("취소", style: TextStyle(
//                             color: kBlack
//                         ),),
//                         style: ButtonStyle(
//                             backgroundColor:
//                             MaterialStateProperty.all<Color>(
//                                 kGray)),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 20),
//                   Expanded(
//                     child: SizedBox(
//                       height: 50,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           if (userPoint >= selectedProduct.productPoint) {
//                             Container(
//                               height: 50,
//                               width: double.infinity,
//                               color: kPrimaryColors,
//                               child: Row(
//                                 children: [
//                                   Text("상품구입 완료")
//                                 ],
//                               ),
//                             );
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text('아자차카'),duration: Duration(seconds: 2),)
//                             );
//                           }
//                         },
//                         child: Text("구매"),
//                         style: ButtonStyle(
//                           backgroundColor:
//                           MaterialStateProperty.all<Color>(
//                               kPrimaryColors),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
