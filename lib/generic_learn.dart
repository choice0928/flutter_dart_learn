
import 'package:flutter_dart_learn/opp_learn.dart';

class TestGeneric {
  void start () {
    Member<Student>member = Member(Student('清华', 'Jack', 18));
    print(member.fixedName());
  }
}

///泛型类
class Cache <T> {
  static final Map <String, Object> _cache = Map();

  //泛型方法
  void setItem (String key, Object value) {
    _cache[key] = value;
  }

  T getItem (String key) {
    return _cache[key];
  }
}

///泛型的类型约束
class Member <T extends Person> {
  T _person;

  Member(this._person);

  String fixedName () {
    return 'fixedName：${_person.name}';
  }
}