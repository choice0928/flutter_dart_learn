
import 'package:flutter/material.dart';

///常用数据类型
class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
//    _numType();
//    _stringType();
//    _boolType();
//    _listType();
//    _mapType();
    _tips();
    return Container(
      child: Text('常用数据类型'),
    );
  }

  ///数字类型
  void _numType() {
    num num1 = -1.0;//数字类型的父类
    num num2 = 2;//数字类型的父类
    int int1 = 1;//只能是整型
    double d1 = 1.68;//双精度
    print("num:$num1,num:$num2,int:$int1,double:$d1");
    print(num1.abs());//求绝对值
    print(num1.toInt());//转换成int
    print(num1.toDouble());//转换成double
  }

  ///字符串
  void _stringType() {
    String str1 = '字符串', str2 = "双引号";//字符串的定义
    String str3 = 'str1:$str1 str2:$str2';//字符串拼接
    String str4 = 'str1' + str1 + 'str2' + str2;//字符串拼接
    String str5 = '尝试截取字符串';
    print(str3);
    print(str4);
    //常用方法
    print(str5.substring(0,2));
    print(str5.indexOf('截取'));
  }

  ///bool Dart是强bool类型检查，只有值为ture，才被认定为ture
  void _boolType() {
    bool success = true, fail = false;
    print(success || fail);
    print(success && fail);
  }

  ///List集合
  void _listType() {
    List list = [1,2,'3'];
    print(list);
    List<int>list2 = [4,5,6];
//    list2 = list;//会报错
    List list3 = [];
    list3.add('list3');
    list3.addAll(list);
    print(list3);

    List list4 = List.generate(3, (index) => index*2);
    print(list4);

    ///集合遍历
    for (int i = 0; i < list.length; i++) {
//      print(list[i]);
    }

    for (var o in list) {
//      print(o);
    }

    list.forEach((val){
      print(val);
    });
  }

  ///map, key唯一， 后面会覆盖
  void _mapType() {
    Map names = {'xiaoming':'小明','xiaohong':'小红'};
    print(names);

    Map ages = {};
    ages['xiaoming'] = 18;
    ages['xiaohong'] = 16;
    print(ages);
    
    ///Map遍历
    ages.forEach((k,v){
      print('k:$k  v:$v');
    });
    
    Map ages2 = ages.map((k,v){
      //迭代生成一个新map
      return MapEntry(v, k);
    });
    print(ages2);

    for (var key in ages.keys) {
        print('$key  ${ages[key]}');
    }
  }

  ///dynamic var object 三者区别
  void _tips () {
    ///dynamic - 动态数据类型 可以定义任何类型，但是会让Dart语法检查失效
    dynamic x = 'aaa';
    print(x.runtimeType);
    print(x);

    ///var
    var a = 'ssdd';
    print(a.runtimeType);
    print(a);

    ///object
    Object b = 'aadad';
    print(b.runtimeType);
    print(b);
  }


}