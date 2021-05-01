import 'package:midterm/data/models/dummy_data.dart';
import 'package:midterm/data/models/model.dart';

class MethodHelper {
  void addClothes(Clothes clothes){
    DUMMY_DATA.add(clothes);
  }

  void deleteClothes(int id){
    DUMMY_DATA.removeWhere((element) => element.id == id);
  }

  void editClothes(Clothes clothes, int index){
    DUMMY_DATA.replaceRange(index, index + 1, [clothes]);
  }
}