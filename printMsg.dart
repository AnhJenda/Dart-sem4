void main(){

  printMsg('hihi');
  test();
  optionalFunction(1);
  optionalNamedFunction(1, x2:'hihi minh la x2');
  optionalNamedDefaultFunction(1);
  Status.active.name;   // lấy ra tên
  Status.values; // lấy ra toàn bộ
  Car car = Car();
  car.printCar();
  car.model = 'ý nhi';
  car.engine = 'đờ i đi';
  car.printCar();
  Car car1 = Car('đạt', 'chu');
}
// return type
void printMsg(String msg) => print(msg);
int test() => 123;
// optional param
void optionalFunction(n1, [x1, x2]){
  print(n1);
  print(x1);
  print(x2);
}
// optional named param
void optionalNamedFunction(n1, {x1, x2}){
  print(n1);
  print(x1);
  print(x2);
}
// optional named param with default
void optionalNamedDefaultFunction(n1, {x1 = 'hihi mình là x1', x2}){
  print(n1);
  print(x1);
  print(x2);
}
// enum
enum Status {
  active, inactive, pending, delete;
}

class Car {
  String? model = 'demo';
  String? engine = 'engine';
  void printCar(){
    print(model);
    print(engine);
  }
  Car(String model, String engine){
    this.model = model;
    this.engine = engine;
  }

  // cách 2 :  Car(this.model, this.engine)

  // getter
  String? get getModel{
      return this.model;
  }
  // setter
  set setModel(String? model){
    this.model = model;
    // cách khác:  this.model = model ?? "Default model"
  }
}