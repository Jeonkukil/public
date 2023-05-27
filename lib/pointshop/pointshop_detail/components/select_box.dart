import 'package:flutter/material.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/controller/list_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectBox extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String selectedOption = "가격순";

    return SliverToBoxAdapter(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 230, right: 10),
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                ref.read(listtemp.notifier).sortGridCard('낮은가격순');
                                Navigator.pop(context);
                                selectedOption = "낮은가격순";
                              },
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '낮은가격순',
                                      style: TextStyle(
                                        color: selectedOption == '낮은가격순'
                                            ? kPrimaryColors
                                            : Colors.black,
                                      ),
                                    ),
                                    if (selectedOption == '낮은가격순')
                                      Icon(Icons.check, color: kPrimaryColors),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 0,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                ref.read(listtemp.notifier).sortGridCard('높은가격순');
                                Navigator.pop(context);
                                selectedOption = "높은가격순";
                              },
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '높은가격순',
                                      style: TextStyle(
                                        color: selectedOption == '높은가격순'
                                            ? kPrimaryColors
                                            : Colors.black,
                                      ),
                                    ),
                                    if (selectedOption == '높은가격순')
                                      Icon(Icons.check, color: kPrimaryColors),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  selectedOption,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedOption == '가격순' ? Colors.black : Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
