import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'data_sorting_provider.g.dart';

@Riverpod(keepAlive: true)
class SortingListOrMaps extends _$SortingListOrMaps {
  Map<String, int> initiatedMap = m1;
  @override
  Map<String, int> build() {
    return initiatedMap;
  }

  sortList(SortType sortTypes) {
    switch (sortTypes) {
      case SortType.numerical:
        Map<String, int> map = initiatedMap;
        List<int> sortedValues = map.values.toList()..sort();

        Map<String, int> sortedMap = {};
        for (var value in sortedValues) {
          initiatedMap.forEach((key, mapValue) {
            if (mapValue == value && !sortedMap.containsKey(key)) {
              sortedMap[key] = value;
            }
          });
        }
        state = sortedMap;
        break;

      case SortType.alphabetic:
        Map<String, int> map = initiatedMap;
        List<String> sortedKeys = map.keys.toList()..sort();

        Map<String, int> sortedMap = {};
        for (var key in sortedKeys) {
          sortedMap[key] = map[key]!;
        }
        state = sortedMap;
        break;

      case SortType.unSorted:
        Map<String, int> map = initiatedMap;
        state = map;
    }
  }
}

Map<String, int> m1 = {
  'Youssef ': 10,
  'Ahmed': 6,
  'Mohamed ': 9,
  'Islam': 1,
  'Omar ': 4,
  'Khalid ': 3,
  'Kareem ': 5,
  'Ali ': 7,
  'Osama ': 8,
  'Haroun ': 2,
};

enum SortType { alphabetic, numerical, unSorted }
