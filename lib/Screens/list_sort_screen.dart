import 'package:flutter/material.dart';
import '../Providers/data_sorting_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListSortScreen extends ConsumerWidget {
  const ListSortScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var xMap = ref.watch(sortingListOrMapsProvider);
    List<String> keys = xMap.keys.toList();
    // get the keys as a list
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: xMap.length,
              itemBuilder: (context, index) {
                String key = keys[index];
                return ListTile(
                  title: Text(xMap.keys.toList()[index]),
                  subtitle: Text('${xMap[key]}'),
                );
              },
            ),
          ),
          Positioned(
            right: 30,
            top: 30,
            child: PopupMenuButton(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: const Text('Alphabetic order'),
                  onTap: () {
                    ref.watch(sortingListOrMapsProvider.notifier).sortList(SortType.alphabetic);
                  },
                ),
                PopupMenuItem(
                  child: const Text('Numerical order'),
                  onTap: () {
                    ref.watch(sortingListOrMapsProvider.notifier).sortList(SortType.numerical);
                  },
                ),
                PopupMenuItem(
                  child: const Text('Un order'),
                  onTap: () {
                    ref.watch(sortingListOrMapsProvider.notifier).sortList(SortType.unSorted);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
