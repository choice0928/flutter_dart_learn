
class Student extends Person {
  //定义类的变量
  String _school;//通过下划线来标识私有变量
  String city;
  String country;
  String name;

  //大括号代表可选参数，赋值视为默认值
  Student(this._school, String name, int age,
      {this.city, this.country = 'China'})
      ://初始化列表，除了调用父类构造器，在子类构造器方法体之前，初始化实例变量
        name = '$country.$city',
        //如果父类没有默认构造方法（无参构造方法），则需要在初始化列表中调用父类构造方法
        super(name, age) {
        print('构造方法体不是必须的');
  }

  //命名构造方法 [类名+.+方法名]
  Student.cover(Student stu) : super(stu.name, stu.age) {
    print('命名构造方法的方法体');
  }
  
  //命名工厂构造方法 [类名+.+方法名]
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }

  //set方法
  set school (String value) {
    _school = value;
  }

  //get方法
  String get school => _school;

  //静态方法 - 类名直接调用
  static doPrint (String str) {
    print('doPrint : $str');
  }
}

///工厂构造方法
class Logger {
  static Logger _cache;
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache;
  }

  Logger._internal();
}

class StudyFlutter extends Study {
  @override
  void study() {
    print('集成抽象类则必须集成抽象类的抽象方法');
  }
}

///抽象类，abstract修饰，不能被实例化，定义接口
abstract class Study {
  void study();
}

///定义一个Dart类，所有类都继承自Object
class Person {
  String name;
  int age;

  //标准构造方法
  Person(this.name,this.age);

  //重写父类方法
  @override
  String toString() {
    // TODO: implement toString
    return 'name:$name  age:$age';
  }
}

///为类添加特征 mixins
///多个类层次结构中重用代码的一种方式
///需要在with关键字后面，跟上一个或者多个mixins名字（用逗号分隔），并且with需要用在extends关键字之后
///mixins特征：实现mixins，创建一个继承自Object类的子类（不能继承其他类），不声明任何的构造方法，不能调用super
class Test extends Person with Study {
  Test(String name, int age) : super(name, age);

  @override
  void study() {
    // TODO: implement study
  }

}