import 'package:uuid/uuid.dart';

class BreadCrumb {
  final String name;
  bool isActive;
  final String uuid;
  BreadCrumb({required this.name,
   required this.isActive}):uuid = const Uuid().v4();

  void Activate(){
    isActive = true;
  }

  //we implement equality now
  @override
  bool operator ==(covariant BreadCrumb other) =>uuid== other.uuid;
  @override
  int get hashCode => uuid.hashCode;

  String get title => name +(isActive?" < ":"");
  
}
