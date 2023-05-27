import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:peoples_tech/controller/list_controller.dart';

class SelectSort extends ConsumerWidget {
  const SelectSort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(listtemp.notifier).sortGridCard('낮은가격순');
      },
    );
  }
}
