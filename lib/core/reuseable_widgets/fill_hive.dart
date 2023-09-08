import 'package:hive/hive.dart';



fillHive(String boxName,List list){
  var box=Hive.box(boxName);
  box.addAll(list);
}