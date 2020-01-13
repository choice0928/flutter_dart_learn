
class TestFunction {
  FunctionLearn functionLearn = FunctionLearn();

  void start () {
      print(functionLearn.sum(1, 2));
  }
}

class FunctionLearn {
  //方法构成
  //返回值，方法名，参数
  //返回值可以缺省，也可以为void或者其他类型
  //方法名，匿名参数可以不写
  //参数（参数类型+参数名），参数类型可以缺省（参数分为可选参数和默认参数）

  int sum (int value1, int value2) {
    return value1 + value2;
  }

  //私有方法
  _privateMethod () {
    print('私有方法');
  }

  //匿名函数
  anonymousMethod () {
    var list = ['私有方法', '匿名方法'];
    list.forEach((i){
      print(list.indexOf(i).toString() + ':' + i);
    });
  }
}